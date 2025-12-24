using CommunityToolkit.Maui.Views;
using SkiaSharp;
using SkiaSharp.Views.Maui;
using SkiaSharp.Views.Maui.Controls;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;
using System.Threading.Channels;
using CommunityToolkit.Maui.Core;
using System.Threading;
using System.IO;
using System.Linq;
using System;
using System.Diagnostics;
using Gym.Models;
using CommunityToolkit.Maui.Media;
using static Microsoft.Maui.ApplicationModel.Permissions;

using System.Globalization;

#if ANDROID
using Android.Media;
#endif

namespace Gym;

public partial class MainPage_Onnx : ContentPage
{
   

    private PoseEstimatorONNX estimator;
    private readonly SemaphoreSlim estimatorSemaphore = new SemaphoreSlim(1, 1);

    // CAMERA
    private bool cameraRunning = false;
    private CommunityToolkit.Maui.Core.CameraPosition currentPosition = CommunityToolkit.Maui.Core.CameraPosition.Front;
    private readonly object cameraLock = new();
    private SKBitmap latestCameraFrame;
    private float[,] latestCameraPose;

    // TEMPLATE
    private float[,] templatePose;

    // Frame queue for camera
    private readonly Channel<SKBitmap> frameQueue = Channel.CreateUnbounded<SKBitmap>();
    private CancellationTokenSource processingCts;

#if ANDROID
    private VideoFrameProvider videoProvider;
    private readonly object videoProviderLock = new();
    private CancellationTokenSource videoCts;
#endif

    // Similarity loop
    private CancellationTokenSource similarityCts;

    // debug / sync
    private long lastCameraFrameMs = 0;
    private bool cameraLoopRunning = false;

    // debug inference times
    private long lastCameraInferenceMs = 0;
    private long lastVideoInferenceMs = 0;

    // keep last template frame reference (owned by provider) to fallback
    private SKBitmap lastTemplateBitmap = null;

    ISpeechToText _speech;
    CancellationTokenSource _cts;

#if ANDROID
    private long lastFrameTime = -1; // last template frame time used
#endif

    private Exercise selectedExercise;
    private int currentImageIndex = 0;

    private VideoExercise? video;

    public MainPage_Onnx(Exercise? exercise = null, VideoExercise? video = null)
    {
        InitializeComponent();

        // --- GESTURE KÉO CAMERA ---
        var pan = new PanGestureRecognizer();
        pan.PanUpdated += OnCameraDrag;
        CameraContainer.GestureRecognizers.Add(pan);

        _speech = SpeechToText.Default;

        Loaded += GymPage_Loaded;
        Unloaded += GymPage_Unloaded;

        // Các phần khởi tạo khác
        this.video = video;
        selectedExercise = exercise;
        currentImageIndex = 0;

        _ = InitModelAsync();

        if (exercise != null)
            _ = LoadTemplateImageAsync();

        if (video != null)
            LoadVideoTemplate(video.Video);
    }

    // --- Voice command handling & video control ---
    // Gắn lên đầu file nếu chưa có:
    // using System.Threading.Tasks; (nếu thiếu)
    // using System.Reflection;

    private bool loopEnabled = false;
    private DateTime _lastVoiceTimestamp = DateTime.MinValue;
    private readonly TimeSpan _voiceLabelClearDelay = TimeSpan.FromSeconds(2);

    // Called whenever a final recognition result arrives
    private void ProcessVoiceCommand(string command)
    {
        if (string.IsNullOrWhiteSpace(command)) return;

        // normalize
        command = command.Trim().ToLowerInvariant();
        _lastVoiceTimestamp = DateTime.UtcNow;

        // set label immediately
        MainThread.BeginInvokeOnMainThread(() =>
        {
            lblVoice.Text = $"Lệnh: {command}";
        });

        // Vietnamese + English keywords (add more phrases as needed)
        if (command.Contains("dừng") || command.Contains("pause") || command.Contains("tạm dừng") || command.Contains("ngưng"))
        {
            PauseVideo();
            return;
        }

        if (command.Contains("phát") || command.Contains("play") || command.Contains("tiếp tục") || command.Contains("chạy"))
        {
            PlayVideo();
            return;
        }

        if (command.Contains("nhanh") || command.Contains("tua nhanh") || command.Contains("tăng tốc") || command.Contains("faster"))
        {
            // tăng 0.25 mỗi lần, tối đa 3.0
            AdjustSpeedRelative(+0.25);
            return;
        }

        if (command.Contains("chậm") || command.Contains("tua chậm") || command.Contains("giảm tốc") || command.Contains("slower"))
        {
            // giảm 0.25 mỗi lần, tối thiểu 0.25
            AdjustSpeedRelative(-0.25);
            return;
        }

        if (command.Contains("bình thường") || command.Contains("mặc định") || command.Contains("1x") || command.Contains("một lần"))
        {
            SetPlaybackSpeed(1.0);
            return;
        }

        if (command.Contains("lặp") || command.Contains("loop") || command.Contains("phát lại liên tục") || command.Contains("repeat"))
        {
            loopEnabled = !loopEnabled;
            SetLoop(loopEnabled);
            return;
        }

        if (command.Contains("phát lại") || command.Contains("restart") || command.Contains("bắt đầu lại"))
        {
            // seek to start and play
            MainThread.BeginInvokeOnMainThread(() =>
            {
                try
                {
                    if (VideoTemplatePlayer != null)
                    {
                        VideoTemplatePlayer.SeekTo(TimeSpan.Zero);
                        PlayVideo();
                    }
                }
                catch { }
            });
            return;
        }

        // optional: skip n seconds "tua 5 giây"
        // detect phrases like "tua 5 giây" or "forward 5 seconds"
        var words = command.Split(' ');
        for (int i = 0; i < words.Length; i++)
        {
            if (words[i].Contains("tua") && i + 1 < words.Length)
            {
                if (int.TryParse(words[i + 1].Where(char.IsDigit).ToArray(), out var sec))
                {
                    SeekRelative(TimeSpan.FromSeconds(sec));
                    return;
                }
            }
            if ((words[i].Contains("giây") || words[i].Contains("seconds")) && i > 0)
            {
                if (int.TryParse(new string(words[i - 1].Where(char.IsDigit).ToArray()), out var sec2))
                {
                    SeekRelative(TimeSpan.FromSeconds(sec2));
                    return;
                }
            }
        }

    }

    // Clear label after delay if unchanged
    private void ScheduleClearVoiceLabel()
    {
        var stamp = _lastVoiceTimestamp;
        _ = Task.Run(async () =>
        {
            await Task.Delay(_voiceLabelClearDelay);
            if (stamp == _lastVoiceTimestamp)
            {
                MainThread.BeginInvokeOnMainThread(() =>
                {
                    try { lblVoice.Text = ""; } catch { }
                });
            }
        });
    }

    // Video control helpers
    private void PlayVideo()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            try
            {
                VideoTemplatePlayer?.Play();
                // also try to resume provider UI if needed (optional)
            }
            catch (Exception ex) { Debug.WriteLine("PlayVideo error: " + ex.Message); }
        });
    }

    private void PauseVideo()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            try
            {
                VideoTemplatePlayer?.Pause();
                // also pause provider-related tokens if you want
            }
            catch (Exception ex) { Debug.WriteLine("PauseVideo error: " + ex.Message); }
        });
    }

    // Try set speed via available property or platform-specific MediaPlayer
    private void SetPlaybackSpeed(double speed)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            try
            {
                // 1) try direct property (common in some media elements)
                var type = VideoTemplatePlayer?.GetType();
                if (type != null)
                {
                    var prop = type.GetProperty("PlaybackRate") ?? type.GetProperty("Speed") ?? type.GetProperty("Rate");
                    if (prop != null && prop.CanWrite)
                    {
                        prop.SetValue(VideoTemplatePlayer, Convert.ChangeType(speed, prop.PropertyType));
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("SetPlaybackSpeed error: " + ex.Message);
            }
        });
    }

    // Increase or decrease speed relatively
    private void AdjustSpeedRelative(double delta)
    {
        try
        {
            double cur = 1.0;
            var type = VideoTemplatePlayer?.GetType();
            if (type != null)
            {
                var prop = type.GetProperty("PlaybackRate") ?? type.GetProperty("Speed") ?? type.GetProperty("Rate");
                if (prop != null && prop.CanRead)
                {
                    var val = prop.GetValue(VideoTemplatePlayer);
                    if (val != null && double.TryParse(val.ToString(), out var v)) cur = v;
                }
            }
            var newSpeed = Math.Clamp(cur + delta, 0.25, 3.0);
            SetPlaybackSpeed(newSpeed);
        }
        catch { SetPlaybackSpeed(1.0); }
    }

    private void SetLoop(bool isLoop)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            try
            {
                // MediaElement / VideoTemplatePlayer typically has IsLooping or ShouldLoop
                var type = VideoTemplatePlayer?.GetType();
                var prop = type?.GetProperty("IsLooping") ?? type?.GetProperty("ShouldLoop") ?? type?.GetProperty("Loop");
                if (prop != null && prop.CanWrite)
                {
                    prop.SetValue(VideoTemplatePlayer, isLoop);
                }
                else
                {
                    // fallback: if there's a property to set
                    var prop2 = type?.GetProperty("IsRepeating");
                    if (prop2 != null && prop2.CanWrite) prop2.SetValue(VideoTemplatePlayer, isLoop);
                }

                loopEnabled = isLoop;
            }
            catch (Exception ex) { Debug.WriteLine("SetLoop error: " + ex.Message); }
        });
    }

    // Seek relative (positive forward, negative backward)
    private void SeekRelative(TimeSpan delta)
    {
        MainThread.BeginInvokeOnMainThread(async () =>
        {
            try
            {
                if (VideoTemplatePlayer != null)
                {
                    var pos = VideoTemplatePlayer.Position;
                    var newPos = pos + delta;
                    if (newPos < TimeSpan.Zero) newPos = TimeSpan.Zero;
                    if (VideoTemplatePlayer.Duration != TimeSpan.Zero && newPos > VideoTemplatePlayer.Duration) newPos = VideoTemplatePlayer.Duration;

                    // Use the SeekTo method instead of directly assigning to the Position property
                    await VideoTemplatePlayer.SeekTo(newPos);
                }
            }
            catch (Exception ex) { Debug.WriteLine("SeekRelative error: " + ex.Message); }
        });
    }


    private async void GymPage_Loaded(object sender, EventArgs e)
    {
        await StartListeningAsync();
    }

    private async void GymPage_Unloaded(object sender, EventArgs e)
    {
        await StopListeningAsync();
    }

    private void OnCameraDrag(object sender, PanUpdatedEventArgs e)
    {
        if (e.StatusType == GestureStatus.Running)
        {
            var bounds = AbsoluteLayout.GetLayoutBounds(CameraContainer);

            double x = bounds.X + e.TotalX;
            double y = bounds.Y + e.TotalY;

            x = Math.Clamp(x, 0, MainGrid.Width - bounds.Width);
            y = Math.Clamp(y, 0, MainGrid.Height - bounds.Height);

            AbsoluteLayout.SetLayoutBounds(CameraContainer,
                new Rect(x, y, bounds.Width, bounds.Height));
        }
    }



    // ======= LOAD TEMPLATE + TRIGGER SIMILARITY =======
    private DateTime lastFeedbackTime = DateTime.MinValue;

    private async Task LoadTemplateImageAsync()
    {
        if (selectedExercise == null || selectedExercise.Images == null || selectedExercise.Images.Count == 0)
            return;

        ImgTemplate.IsVisible = false;
        VideoTemplatePlayer.IsVisible = false;

        string fileName = selectedExercise.Images[currentImageIndex];
        Debug.WriteLine($">>> [TEMPLATE] fileName = {fileName}");

        try
        {
            System.IO.Stream stream = await FileSystem.OpenAppPackageFileAsync(fileName);
            if (stream == null)
            {
                Debug.WriteLine($">>> File not found: {fileName}");
                return;
            }

            // ⚠️ KHÔNG using, KHÔNG dispose stream trong lúc decode
            SKBitmap bmp = SKBitmap.Decode(stream);

            if (bmp == null)
            {
                Debug.WriteLine($">>> Decode FAILED!");
                return;
            }

            // ❗ Copy để TFLite xử lý (bitmap decode từ Assets dễ bị lock)
            var bmpCopy = bmp.Copy();
            templatePose = estimator?.GetKeypoints(bmpCopy);

            // Load vào UI Image
            ImgTemplate.Source = ImageSource.FromStream(() =>
            {
                var data = bmpCopy.Encode(SKEncodedImageFormat.Png, 100);
                return data.AsStream();
            });

            ImgTemplate.IsVisible = true;

            StartSimilarityUpdater();
        }
        catch (Exception ex)
        {
            Debug.WriteLine($">>> LoadTemplateImageAsync error: {fileName} | {ex}");
        }
    }


    // ======== CHUYỂN ẢNH TIẾP THEO ========
    private void NextTemplateImage()
    {
        if (selectedExercise == null || selectedExercise.Images.Count == 0)
            return;

        currentImageIndex++;
        if (currentImageIndex >= selectedExercise.Images.Count)
            currentImageIndex = 0;

        _ = LoadTemplateImageAsync();
    }


    private async Task InitModelAsync()
    {
        string modelPath = Path.Combine(FileSystem.AppDataDirectory, "movenet.onnx");
        if (!File.Exists(modelPath))
        {
            using var src = await FileSystem.OpenAppPackageFileAsync("movenet.onnx");
            using var dst = File.Create(modelPath);
            await src.CopyToAsync(dst);
        }

        estimator = new PoseEstimatorONNX(modelPath);

        // Start camera processing loop (reads from frameQueue)
        processingCts = new CancellationTokenSource();
        _ = ProcessFramesAsync(processingCts.Token);
    }

#if ANDROID
    // ---------------- VIDEO FRAME PROVIDER SAFE ----------------
    private class VideoFrameProvider : IDisposable
    {
        private MediaMetadataRetriever retriever;
        private string videoPath;
        private SKBitmap lastFrame;
        private long lastRequestMs = -1000;
        private readonly object lockObj = new object();
        private long durationMs = -1;

        public VideoFrameProvider(string path)
        {
            videoPath = path ?? throw new ArgumentNullException(nameof(path));
            retriever = new MediaMetadataRetriever();
            retriever.SetDataSource(videoPath);
            try
            {
                var durStr = retriever.ExtractMetadata(MetadataKey.Duration);
                if (!string.IsNullOrEmpty(durStr) && long.TryParse(durStr, out var d))
                    durationMs = d;
            }
            catch { durationMs = -1; }
        }

        public SKBitmap GetFrameAtMs(long ms)
        {
            lock (lockObj)
            {
                if (ms < 0) ms = 0;
                if (durationMs > 0 && ms > durationMs) ms = durationMs;

                const int minDeltaMs = 40;
                if (lastFrame != null && Math.Abs(ms - lastRequestMs) < minDeltaMs)
                    return lastFrame;

                lastRequestMs = ms;

                try
                {
                    if (retriever == null) return lastFrame;
                    using var bmp = SafeGetFrame(ms * 1000);
                    if (bmp == null) return lastFrame;

                    using var stream = new MemoryStream();
                    bmp.Compress(Android.Graphics.Bitmap.CompressFormat.Png, 100, stream);
                    stream.Position = 0;

                    try { lastFrame?.Dispose(); } catch { }
                    lastFrame = SKBitmap.Decode(stream);
                    return lastFrame;
                }
                catch { return lastFrame; }
            }
        }

        private Android.Graphics.Bitmap SafeGetFrame(long timeUs)
        {
            try { return retriever.GetFrameAtTime(timeUs, Option.Closest); }
            catch { return null; }
        }

        public void Dispose()
        {
            lock (lockObj)
            {
                try { retriever?.Release(); } catch { }
                retriever = null;
                try { lastFrame?.Dispose(); } catch { }
                lastFrame = null;
            }
        }
    }
#endif

    // ---------------- CAMERA PROCESSING ----------------
#if ANDROID
    private async Task CameraLoopAsync(CancellationToken token)
    {
        cameraLoopRunning = true;
        try
        {
            while (!token.IsCancellationRequested && cameraRunning)
            {
                try
                {
                    using var stream = await CameraView.CaptureImage(CancellationToken.None);
                    if (stream != null)
                    {
                        var bmp = SKBitmap.Decode(stream);
                        if (bmp != null)
                        {
                            lastCameraFrameMs = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds();
                            await frameQueue.Writer.WriteAsync(bmp);
                        }
                    }
                }
                catch (OperationCanceledException) { break; }
                catch (Exception ex)
                {
                    Debug.WriteLine($"CameraLoop exception: {ex}");
                }

                try { await Task.Delay(100, token); } catch (TaskCanceledException) { break; }
            }
        }
        finally
        {
            cameraLoopRunning = false;
        }
    }
#endif

    private SKBitmap PreprocessBitmap(SKBitmap src)
    {
        if (src == null) return null!;
        int size = Math.Min(src.Width, src.Height);
        SKBitmap cropped = new SKBitmap(size, size);
        using (var canvas = new SKCanvas(cropped))
            canvas.DrawBitmap(src, new SKRect((src.Width - size) / 2, (src.Height - size) / 2,
                                              (src.Width + size) / 2, (src.Height + size) / 2));

        SKBitmap resized = cropped.Resize(new SKImageInfo(192, 192), SKFilterQuality.High);

        using var paint = new SKPaint
        {
            ColorFilter = SKColorFilter.CreateColorMatrix(new float[]
            {
                1.2f,0,0,0,0,
                0,1.2f,0,0,0,
                0,0,1.2f,0,0,
                0,0,0,1,0
            })
        };

        SKBitmap finalBmp = new SKBitmap(192, 192);
        using (var canvas = new SKCanvas(finalBmp))
            canvas.DrawBitmap(resized, 0, 0, paint);

        cropped.Dispose();
        resized.Dispose();
        return finalBmp;
    }

    private async Task ProcessFramesAsync(CancellationToken token)
    {
        while (!token.IsCancellationRequested)
        {
            SKBitmap? frame = null;
            try { frame = await frameQueue.Reader.ReadAsync(token); }
            catch (OperationCanceledException) { break; }
            catch (Exception) { break; }
            if (frame == null) continue;

            try
            {
                var processedFrame = PreprocessBitmap(frame);
                var sw = Stopwatch.StartNew();
                await estimatorSemaphore.WaitAsync();
                float[,] pose = null;
                try { pose = estimator.GetKeypoints(processedFrame); }
                finally
                {
                    estimatorSemaphore.Release();
                    sw.Stop();
                    lastCameraInferenceMs = sw.ElapsedMilliseconds;
                }

                lock (cameraLock)
                    latestCameraPose = pose;

                MainThread.BeginInvokeOnMainThread(() =>
                    LblCameraInfo.Text = $"Cam inf: {lastCameraInferenceMs} ms");

                processedFrame?.Dispose();
                frame.Dispose();
            }
            catch (Exception ex)
            {
                frame?.Dispose();
                Debug.WriteLine($"ProcessFramesAsync error: {ex}");
            }
        }
    }

#if ANDROID
    private Task similarityTask;
#endif

    // ======= START SIMILARITY LOOP =======
    private void StartSimilarityUpdater()
    {

        similarityCts?.Cancel();
        similarityCts = new CancellationTokenSource();
        var token = similarityCts.Token;

        _ = Task.Run(async () =>
        {
            while (!token.IsCancellationRequested)
            {
                float[,] camPose, tmplPose;

                lock (cameraLock)
                    camPose = latestCameraPose;

                tmplPose = templatePose;

                if (camPose != null && tmplPose != null)
                {
                    // Tính similarity
                    float sim = ComputePoseSimilarity(tmplPose, camPose);

                    await MainThread.InvokeOnMainThreadAsync(() =>
                    {
                        if (LblSimilarity != null)
                            LblSimilarity.Text = $"Similarity: {sim * 100f:0}%";

                        // Trigger feedback luôn khi camPose != null
                        _ = UpdateBoneFeedbackAsync(tmplPose, camPose);
                    });
                }

                await Task.Delay(120, token);
            }
        });
    }





    // ---------------- CAMERA BUTTONS ----------------
    private async void BtnStartCamera_Clicked(object sender, EventArgs e)
    {
#if ANDROID
        cameraRunning = !cameraRunning;
        if (cameraRunning)
        {
            try
            {
                var cams = await CameraView.GetAvailableCameras(CancellationToken.None);
                CameraView.SelectedCamera = cams.FirstOrDefault(c => c.Position == currentPosition);
                await CameraView.StartCameraPreview(CancellationToken.None);
                BtnStartStop.Text = "Stop";

                if (processingCts == null || processingCts.IsCancellationRequested)
                    processingCts = new CancellationTokenSource();

                if (!cameraLoopRunning)
                    _ = CameraLoopAsync(processingCts.Token);

                StartSimilarityUpdater();

                // Clear leftover frames
                while (frameQueue.Reader.TryRead(out var leftover)) { try { leftover?.Dispose(); } catch { } }
            }
            catch (Exception ex) { await DisplayAlert("Camera error", ex.Message, "OK"); cameraRunning = false; BtnStartStop.Text = "Start / Stop"; }
        }
        else
        {
            try { processingCts?.Cancel(); } catch { }
            try { CameraView.StopCameraPreview(); } catch { }
            BtnStartStop.Text = "Start / Stop";
        }
#else
    await DisplayAlert("Not supported", "Camera preview only on Android", "OK");
#endif
    }

    private async void BtnSwitchCamera_Clicked(object sender, EventArgs e)
    {
#if ANDROID
        if (!cameraRunning) return;
        currentPosition = currentPosition == CommunityToolkit.Maui.Core.CameraPosition.Front ? CommunityToolkit.Maui.Core.CameraPosition.Rear : CommunityToolkit.Maui.Core.CameraPosition.Front;
        var cams = await CameraView.GetAvailableCameras(CancellationToken.None);
        var cam = cams.FirstOrDefault(c => c.Position == currentPosition);
        if (cam == null) return;
        CameraView.StopCameraPreview();
        CameraView.SelectedCamera = cam;
        await CameraView.StartCameraPreview(CancellationToken.None);
#else
        await DisplayAlert("Not supported", "Switch camera only on Android", "OK");
#endif
    }

    // ---------------- LOAD TEMPLATE ----------------
    //    private async void BtnLoadTemplate_Clicked(object sender, EventArgs e)
    //    {
    //#if ANDROID
    //        string assetPath = "video.mp4";
    //        string tempFile = Path.Combine(FileSystem.CacheDirectory, "video.mp4");

    //        using (var assetStream = Android.App.Application.Context.Assets.Open(assetPath))
    //        using (var outStream = File.Create(tempFile))
    //            assetStream.CopyTo(outStream);

    //        VideoTemplatePlayer.Source = tempFile;
    //        VideoTemplatePlayer.IsVisible = true;
    //        VideoTemplatePlayer.ShouldAutoPlay = true;

    //        lock (videoProviderLock)
    //        {
    //            try { videoCts?.Cancel(); } catch { }
    //            try { videoProvider?.Dispose(); } catch { }
    //            videoProvider = new VideoFrameProvider(tempFile);
    //            lastFrameTime = -1;
    //            try { lastTemplateBitmap?.Dispose(); lastTemplateBitmap = null; } catch { }
    //            templatePose = null;
    //        }

    //        StartSimilarityUpdater();
    //#else
    //        VideoTemplatePlayer.Source = "mp4/video.mp4";
    //        VideoTemplatePlayer.IsVisible = true;
    //        VideoTemplatePlayer.ShouldAutoPlay = true;
    //#endif
    //    }

    private async void BtnLoadTemplate_Clicked(object sender, EventArgs e)
    {
        var file = await FilePicker.Default.PickAsync();
        if (file == null) return;

        ImgTemplate.IsVisible = false;
        VideoTemplatePlayer.IsVisible = false;

        string ext = Path.GetExtension(file.FileName).ToLower();

        if (ext == ".mp4" || ext == ".mov" || ext == ".avi" || ext == ".mkv")
        {
#if ANDROID
            lock (videoProviderLock)
            {
                try { videoCts?.Cancel(); } catch { }
                try { videoProvider?.Dispose(); } catch { }
                videoProvider = new VideoFrameProvider(file.FullPath);

                try { lastTemplateBitmap?.Dispose(); } catch { lastTemplateBitmap = null; }
                lastTemplateBitmap = null;
                templatePose = null;
                lastFrameTime = -1;

                videoCts = new CancellationTokenSource();
            }

            VideoTemplatePlayer.Source = file.FullPath;
            VideoTemplatePlayer.IsVisible = true;
            VideoTemplatePlayer.ShouldAutoPlay = true;

            StartSimilarityUpdater();
#else
            VideoTemplatePlayer.Source = file.FullPath;
            VideoTemplatePlayer.IsVisible = true;
            VideoTemplatePlayer.ShouldAutoPlay = true;
#endif
        }
        else
        {
            using var s = await file.OpenReadAsync();
            using var bmp = SKBitmap.Decode(s);
            ImgTemplate.Source = ImageSource.FromStream(() => file.OpenReadAsync().Result);
            ImgTemplate.IsVisible = true;

            templatePose = estimator?.GetKeypoints(bmp);
        }
    }

    private void LoadVideoTemplate(string fileName)
    {
#if ANDROID
    // --- Video cho MediaElement (UI) ---
    string uiPath = Path.Combine(FileSystem.AppDataDirectory, $"ui_{fileName}");
    if (!File.Exists(uiPath))
    {
        using var assetStream = Android.App.Application.Context.Assets.Open(fileName);
        using var outStream = File.Create(uiPath);
        assetStream.CopyTo(outStream);
    }

    // --- Video cho VideoFrameProvider (frame extraction) ---
    string providerPath = Path.Combine(FileSystem.AppDataDirectory, $"prov_{fileName}");
    if (!File.Exists(providerPath))
    {
        using var assetStream = Android.App.Application.Context.Assets.Open(fileName);
        using var outStream = File.Create(providerPath);
        assetStream.CopyTo(outStream);
    }

    // --- Setup Provider ---
    lock (videoProviderLock)
    {
        try { videoCts?.Cancel(); } catch { }
        try { videoProvider?.Dispose(); } catch { }

        videoProvider = new VideoFrameProvider(providerPath);
        videoCts = new CancellationTokenSource();

        // Lấy frame đầu tiên để tính templatePose
        try { lastTemplateBitmap?.Dispose(); } catch { lastTemplateBitmap = null; }
        lastTemplateBitmap = videoProvider.GetFrameAtMs(0);
        templatePose = estimator?.GetKeypoints(lastTemplateBitmap);
    }

    // --- Chỉ dùng MediaElement đọc UI file ---
    VideoTemplatePlayer.Source = uiPath;
    VideoTemplatePlayer.IsVisible = true;
    VideoTemplatePlayer.ShouldAutoPlay = true;

    // --- Start similarity ---
    StartSimilarityUpdater();
#endif
    }












    // ---------------- DRAW TEMPLATE ----------------
    private CancellationTokenSource ttsCts;

    private void OnTemplateCanvasPaint(object sender, SKPaintSurfaceEventArgs e)
    {
        var canvas = e.Surface.Canvas;
        var info = e.Info;
        canvas.Clear(SKColors.Black);

        if (templatePose != null)
            DrawSkeleton(canvas, templatePose, info.Width, info.Height);
    }

    private void DrawSkeleton(SKCanvas canvas, float[,] keypoints, int width, int height)
    {
        if (keypoints == null) return;

        using var paint = new SKPaint
        {
            Color = SKColors.Lime,
            StrokeWidth = 4,
            IsAntialias = true,
            Style = SKPaintStyle.Stroke
        };

        var bones = PoseEstimatorONNX.GetBones();
        for (int i = 0; i < bones.GetLength(0); i++)
        {
            int a = bones[i, 0], b = bones[i, 1];
            if (keypoints[a, 2] < 0.3f || keypoints[b, 2] < 0.3f) continue;
            var p1 = new SKPoint(keypoints[a, 1] * width, keypoints[a, 0] * height);
            var p2 = new SKPoint(keypoints[b, 1] * width, keypoints[b, 0] * height);
            canvas.DrawLine(p1, p2, paint);
            canvas.DrawCircle(p1, 4, paint);
            canvas.DrawCircle(p2, 4, paint);
        }
    }

    private static readonly int[,] Bones = new int[,]
    {
        {0,1},{0,2},{1,3},{2,4},{0,5},{0,6},
        {5,7},{7,9},{6,8},{8,10},{5,11},{6,12},
        {11,12},{11,13},{13,15},{12,14},{14,16}
    };

    private static float ComputePoseSimilarity(float[,] poseA, float[,] poseB, float confThreshold = 0.3f)
    {
        if (poseA == null || poseB == null) return 0f;
        int numBones = Bones.GetLength(0);
        float[] anglesA = new float[numBones];
        float[] anglesB = new float[numBones];

        for (int i = 0; i < numBones; i++)
        {
            int a = Bones[i, 0], b = Bones[i, 1];
            anglesA[i] = (poseA[a, 2] < confThreshold || poseA[b, 2] < confThreshold)
                ? 0f
                : (float)Math.Atan2(poseA[b, 0] - poseA[a, 0], poseA[b, 1] - poseA[a, 1]);
            anglesB[i] = (poseB[a, 2] < confThreshold || poseB[b, 2] < confThreshold)
                ? 0f
                : (float)Math.Atan2(poseB[b, 0] - poseB[a, 0], poseB[b, 1] - poseB[a, 1]);
        }

        if (anglesA.All(x => Math.Abs(x) < 1e-6f) || anglesB.All(x => Math.Abs(x) < 1e-6f))
            return 0f;

        float sum = 0f;
        for (int i = 0; i < numBones; i++)
            sum += (float)Math.Cos(anglesA[i] - anglesB[i]);

        return sum / numBones;
    }
    // Lưu message lần trước để không đọc lặp



    // ======== CẬP NHẬT FEEDBACK + TTS ========
    private string lastFeedbackMsg = "";
    private bool isHoldingCorrectPose = false;
    private string pendingMsg = null;
    private bool isSpeaking = false;
    private bool isHoldTimerRunning = false;

    // Mapping chi tiết các xương/keypoints
    private static readonly Dictionary<(string, string), string> BoneMap = new()
{
    { ("Left Wrist", "Left Elbow"), "cánh tay trái (cổ tay → cùi chỏ)" },
    { ("Left Elbow", "Left Shoulder"), "cánh tay trái (cùi chỏ → vai)" },
    { ("Right Wrist", "Right Elbow"), "cánh tay phải (cổ tay → cùi chỏ)" },
    { ("Right Elbow", "Right Shoulder"), "cánh tay phải (cùi chỏ → vai)" },
    { ("Left Knee", "Left Hip"), "chân trái (gối → hông)" },
    { ("Right Knee", "Right Hip"), "chân phải (gối → hông)" },
    { ("Left Ear", "Left Eye"), "mặt trái" },
    { ("Right Ear", "Right Eye"), "mặt phải" }
};

    // Mapping nhóm chung
    private string HumanBoneGroupName(int a, int b)
    {
        string jointA = KeypointName(a);
        string jointB = KeypointName(b);

        var handJoints = new[] { "cổ tay trái", "cổ tay phải", "khuỷu tay trái", "khuỷu tay phải", "vai trái", "vai phải" };
        var legJoints = new[] { "gối trái", "gối phải", "mắt cá chân trái", "mắt cá chân phải", "hông trái", "hông phải" };
        var faceJoints = new[] { "mũi", "mắt trái", "mắt phải", "tai trái", "tai phải" };

        if (handJoints.Contains(jointA) || handJoints.Contains(jointB))
            return "cánh tay";
        if (legJoints.Contains(jointA) || legJoints.Contains(jointB))
            return "chân";
        if (faceJoints.Contains(jointA) || faceJoints.Contains(jointB))
            return "mặt";

        return $"{jointA} → {jointB}";
    }

    // Mapping chi tiết
    private string HumanBoneName(int a, int b)
    {
        string jointA = KeypointName(a);
        string jointB = KeypointName(b);

        if (BoneMap.TryGetValue((jointA, jointB), out var name) ||
            BoneMap.TryGetValue((jointB, jointA), out name))
            return name;

        return $"{jointA} → {jointB}";
    }

    private async Task UpdateBoneFeedbackAsync(float[,] templatePose, float[,] cameraPose)
    {
        if (templatePose == null || cameraPose == null) return;

        string msg;
        float threshold = 0.9f;
        List<int> handBones = new();
        List<int> legBones = new();
        List<int> otherBones = new();

        // ===== Kiểm tra từng xương =====
        for (int i = 0; i < Bones.GetLength(0); i++)
        {
            int a = Bones[i, 0], b = Bones[i, 1];

            if (cameraPose[a, 2] < 0.3f || cameraPose[b, 2] < 0.3f)
                continue;

            float angleTemplate = (templatePose[a, 2] < 0.3f || templatePose[b, 2] < 0.3f)
                ? 0f
                : (float)Math.Atan2(templatePose[b, 0] - templatePose[a, 0],
                                    templatePose[b, 1] - templatePose[a, 1]);

            float angleCamera = (float)Math.Atan2(cameraPose[b, 0] - cameraPose[a, 0],
                                                  cameraPose[b, 1] - cameraPose[a, 1]);

            if (Math.Abs(angleTemplate - angleCamera) > threshold)
            {
                string jA = KeypointName(a);
                string jB = KeypointName(b);

                if (handBones.Contains(i) || legBones.Contains(i) || otherBones.Contains(i))
                    continue;

                if (jA.Contains("tay") || jB.Contains("tay") || jA.Contains("khuỷu") || jB.Contains("khuỷu"))
                    handBones.Add(i);
                else if (jA.Contains("gối") || jB.Contains("gối") || jA.Contains("mắt cá") || jB.Contains("mắt cá") ||
                         jA.Contains("hông") || jB.Contains("hông"))
                    legBones.Add(i);
                else
                    otherBones.Add(i);
            }
        }

        float sim;
        lock (cameraLock)
        {
            sim = ComputePoseSimilarity(templatePose, cameraPose);
        }

        // ===== Tạo feedback chi tiết =====
        if (sim >= 0.80f)
        {
            msg = "Tư thế đúng, tuyệt vời!";
            if (msg != lastFeedbackMsg)
            {
                lastFeedbackMsg = msg;
                pendingMsg = msg;
                await SpeakPendingMsgAsync();

                if (!isHoldTimerRunning)
                {
                    isHoldTimerRunning = true;
                    _ = Task.Run(async () =>
                    {
                        await Task.Delay(3000); // giữ tư thế 3 giây
                        await MainThread.InvokeOnMainThreadAsync(() => NextTemplateImage());
                        isHoldTimerRunning = false;
                    });
                }
            }
        }
        else
        {
            if (!handBones.Any() && !legBones.Any() && !otherBones.Any())
            {
                msg = "Không xác định được bộ phận sai. Hãy điều chỉnh camera để thấy toàn thân.";
            }
            else
            {
                // ===== Chi tiết hướng dẫn từng bộ phận =====
                List<string> feedbackParts = new();
                foreach (var idx in handBones.Concat(legBones).Concat(otherBones))
                {
                    int a = Bones[idx, 0], b = Bones[idx, 1];
                    string boneName = HumanBoneName(a, b);
                    string groupName = HumanBoneGroupName(a, b);

                    string action = "Điều chỉnh"; // mặc định

                    // Ví dụ: hướng dẫn chi tiết nâng/hạ/duỗi
                    if (boneName.Contains("tay") || boneName.Contains("khuỷu"))
                    {
                        action = (cameraPose[b, 1] < templatePose[b, 1]) ? "Nâng" : "Hạ";
                    }
                    else if (boneName.Contains("gối") || boneName.Contains("chân") || boneName.Contains("hông"))
                    {
                        action = (cameraPose[b, 1] < templatePose[b, 1]) ? "Duỗi" : "Gập";
                    }

                    feedbackParts.Add($"{action} {boneName} sao cho thẳng với {groupName}");
                }

                msg = string.Join("; ", feedbackParts);
            }
        }

        // ===== Quản lý TTS & label =====
        if (msg != lastFeedbackMsg)
        {
            // Chỉ giữ message mới nhất
            pendingMsg = msg;
            if (!isSpeaking)
                await SpeakPendingMsgAsync();
            lastFeedbackMsg = msg;
        }
    }


    // ================== VIDEO AUDIO DUCKING ==================
    private double _videoVolumeBeforeTts = 1.0;
    private bool _videoMutedByTts = false;

    private void MuteVideoForTts()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            try
            {
                if (VideoTemplatePlayer == null) return;

                if (!_videoMutedByTts)
                {
                    _videoVolumeBeforeTts = VideoTemplatePlayer.Volume;
                    _videoMutedByTts = true;
                }

                VideoTemplatePlayer.Volume = 0;
            }
            catch { }
        });
    }

    private void RestoreVideoAfterTts()
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            try
            {
                if (VideoTemplatePlayer == null) return;

                if (_videoMutedByTts)
                {
                    VideoTemplatePlayer.Volume = _videoVolumeBeforeTts;
                    _videoMutedByTts = false;
                }
            }
            catch { }
        });
    }
    //-------------------------------------------

    // =================== TTS ===================
    private async Task SpeakPendingMsgAsync()
    {
        if (pendingMsg == null) return;

        isSpeaking = true;
        string msgToSpeak = pendingMsg;
        pendingMsg = null;

        // ===== Hiển thị text trên UI =====
        await MainThread.InvokeOnMainThreadAsync(() => LblBoneFeedback.Text = msgToSpeak);

        // ===== Hủy TTS cũ nếu có =====
        ttsCts?.Cancel();
        ttsCts = new CancellationTokenSource();
        var token = ttsCts.Token;

        // ===== Mute video trước khi TTS =====
        MuteVideoForTts();

        try
        {
            // ===== Gọi TTS gốc =====
            await SpeakTextAsync(msgToSpeak, token);
        }
        catch (OperationCanceledException) { }
        catch { } // bỏ qua các lỗi khác
        finally
        {
            // ===== Restore video sau khi TTS xong =====
            RestoreVideoAfterTts();

            lastFeedbackMsg = msgToSpeak;
            isSpeaking = false;
        }

        // ===== Delay giữa các câu TTS để tránh spam =====
        try
        {
            await Task.Delay(5500, token);
        }
        catch (OperationCanceledException) { }

        // ===== Nếu vẫn còn message mới, gọi lại =====
        if (pendingMsg != null)
            await SpeakPendingMsgAsync();
    }



    private async Task SpeakTextAsync(string text, CancellationToken token)
    {
        try
        {
            var locales = await TextToSpeech.GetLocalesAsync();
            var viLocale = locales.FirstOrDefault(l => l.Language.Contains("vi")) ?? locales.FirstOrDefault();
            if (viLocale == null) return;

            var options = new SpeechOptions { Volume = 1f, Pitch = 1f, Locale = viLocale };
            await TextToSpeech.Default.SpeakAsync(text, options, token);
        }
        catch (OperationCanceledException) { }
        catch (Exception ex) { Debug.WriteLine($"TTS error: {ex.Message}"); }
    }



    private string KeypointName(int idx) => idx switch
    {
        0 => "mũi",
        1 => "mắt trái",
        2 => "mắt phải",
        3 => "tai trái",
        4 => "tai phải",
        5 => "vai trái",
        6 => "vai phải",
        7 => "khuỷu tay trái",
        8 => "khuỷu tay phải",
        9 => "cổ tay trái",
        10 => "cổ tay phải",
        11 => "hông trái",
        12 => "hông phải",
        13 => "gối trái",
        14 => "gối phải",
        15 => "mắt cá chân trái",
        16 => "mắt cá chân phải",
        _ => "khớp không xác định"
    };

    //    private async void BtnBackToExercises_Clicked(object sender, EventArgs e)
    //    {
    //        // 1. Dừng camera
    //        cameraRunning = false;
    //        try { processingCts?.Cancel(); } catch { }

    //#if ANDROID
    //        try { videoCts?.Cancel(); } catch { }
    //        try { videoProvider?.Dispose(); videoProvider = null; } catch { }
    //        try { lastTemplateBitmap?.Dispose(); lastTemplateBitmap = null; } catch { }
    //#endif

    //        try { similarityCts?.Cancel(); } catch { }
    //        try { latestCameraFrame?.Dispose(); latestCameraFrame = null; } catch { }
    //        try { ttsCts?.Cancel(); ttsCts = null; } catch { }

    //        // 2. Chuyển sang trang ExerciseList
    //        await Navigation.PushAsync(new ExercisesPage());
    //    }

    private async Task StartListeningAsync()
    {
        var granted = await _speech.RequestPermissions();
        if (!granted)
            return;

        _speech.RecognitionResultUpdated += OnRecognitionResultUpdated;
        _speech.RecognitionResultCompleted += OnRecognitionResultCompleted;

        _cts = new CancellationTokenSource();

        await _speech.StartListenAsync(
            new SpeechToTextOptions
            {
                Culture = new CultureInfo("vi-VN"),
                ShouldReportPartialResults = true
            },
            _cts.Token
        );
    }

    private async Task StopListeningAsync()
    {
        try
        {
            _cts?.Cancel();
            await _speech.StopListenAsync();
        }
        catch { }
    }

    private void OnRecognitionResultUpdated(object sender, SpeechToTextRecognitionResultUpdatedEventArgs e)
    {
        MainThread.BeginInvokeOnMainThread(() =>
        {
            lblVoice.Text = $"Bạn đang nói: {e.RecognitionResult}";
        });
    }

    private void OnRecognitionResultCompleted(object sender, SpeechToTextRecognitionResultCompletedEventArgs e)
    {
        var finalText = e.RecognitionResult.Text;
        var txt = finalText?.ToLowerInvariant().Trim() ?? "";

        MainThread.BeginInvokeOnMainThread(() =>
        {
            lblVoice.Text = $"Hoàn tất: {finalText}";
        });

        // xử lý lệnh
        ProcessVoiceCommand(txt);

        // schedule clear label after short delay if unchanged
        ScheduleClearVoiceLabel();

        RestartListening();
    }

    private async void RestartListening()
    {
        try
        {
            await Task.Delay(300); // chống spam

            _cts?.Cancel();
            _cts = new CancellationTokenSource();

            await _speech.StartListenAsync(
                new SpeechToTextOptions
                {
                    Culture = new CultureInfo("vi-VN"),
                    ShouldReportPartialResults = true
                },
                _cts.Token
            );
        }
        catch (Exception ex)
        {
            Console.WriteLine("Restart error: " + ex.Message);
        }
    }


    protected override void OnDisappearing()
    {
        base.OnDisappearing();
        cameraRunning = false;
        try { processingCts?.Cancel(); } catch { }
#if ANDROID
        try { videoCts?.Cancel(); } catch { }
        try { videoProvider?.Dispose(); } catch { }
        try { lastTemplateBitmap?.Dispose(); } catch { }
#endif
        try { similarityCts?.Cancel(); } catch { }
        try { latestCameraFrame?.Dispose(); } catch { }
    }
}
