#if ANDROID
using Android.Media;
using SkiaSharp;
using System;
using System.IO;
using Xamarin.KotlinX.Coroutines.Stream;

namespace Gym
{
    public class VideoFrameProvider : IDisposable
    {
        private MediaMetadataRetriever retriever;
        private string videoPath;

        private SKBitmap lastFrame;
        private long lastRequestMs = -100; // lần request frame gần nhất
        private readonly object lockObj = new object();

        public VideoFrameProvider(string path)
        {
            videoPath = path ?? throw new ArgumentNullException(nameof(path));
            retriever = new MediaMetadataRetriever();
            retriever.SetDataSource(videoPath);
        }

        /// <summary>
        /// Lấy frame tại thời điểm ms. Fallback frame cuối nếu retriever trả null.
        /// Throttling: chỉ gọi retriever nếu cách lần request trước >=50ms.
        /// </summary>
        public SKBitmap GetFrameAtMs(long ms)
        {
            lock (lockObj)
            {
                // clamp timestamp
                if (ms < 0) ms = 0;

                // throttling
                if (lastFrame != null && Math.Abs(ms - lastRequestMs) < 50)
                    return lastFrame;

                lastRequestMs = ms;

                try
                {
                    // Nếu retriever bị null (đã Release)
                    if (retriever == null)
                        return lastFrame;

                    // Lấy frame — nhưng retriever sẽ CRASH nếu timestamp vượt duration
                    // dùng TryGetFrame() để tránh crash
                    var frame = SafeGetFrame(ms * 1000);
                    if (frame == null)
                        return lastFrame;

                    using (frame)
                    using (var stream = new MemoryStream())
                    {
                        frame.Compress(Android.Graphics.Bitmap.CompressFormat.Png, 100, stream);
                        stream.Position = 0;

                        lastFrame?.Dispose();
                        lastFrame = SKBitmap.Decode(stream);
                        return lastFrame;
                    }
                }
                catch
                {
                    // Nếu có lỗi (kể cả native crash), đừng bao giờ crash app
                    return lastFrame;
                }
            }
        }

        private Android.Graphics.Bitmap SafeGetFrame(long timeUs)
        {
            try
            {
                return retriever.GetFrameAtTime(timeUs, Option.Closest);
            }
            catch
            {
                return null;
            }
        }


        public void Dispose()
        {
            lock (lockObj)
            {
                retriever?.Release();
                retriever = null;

                lastFrame?.Dispose();
                lastFrame = null;
            }
        }
    }
}
#endif
