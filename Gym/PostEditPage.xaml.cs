using Gym.Models;
using Microsoft.Maui.Storage;
using Syncfusion.Maui.Core;
using System.Net.Http.Headers;

namespace Gym.Pages;

public partial class PostEditPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    private Post _post;

    private List<PostMedia> OldMedia = new(); // media cũ từ server
    private List<FileResult> NewImages = new();
    private List<FileResult> NewVideos = new();
    private List<int> _deletedMediaIds = new(); // media cũ bị xóa

    public PostEditPage(Post post)
    {
        InitializeComponent();
        _post = post;

        TitleEntry.Text = post.Title;
        ContentEditor.Text = post.Content;

        // copy media cũ
        OldMedia = post.AllMedia.Select(m => new PostMedia
        {
            Id = m.Id,
            MediaType = m.MediaType,
            Url = m.Url
        }).ToList();

        RefreshMediaViews();
    }

    private void RefreshMediaViews()
    {
        OldMediaPreview.ItemsSource = null;
        OldMediaPreview.ItemsSource = OldMedia;
        OldMediaPreview.IsVisible = OldMedia.Count > 0;
        OldMediaLabel.IsVisible = OldMediaPreview.IsVisible;

        ImagesPreview.ItemsSource = null;
        ImagesPreview.ItemsSource = NewImages.Select(i => i.FullPath).ToList();
        ImagesPreview.IsVisible = NewImages.Count > 0;
        NewImagesLabel.IsVisible = ImagesPreview.IsVisible;

        VideosPreview.ItemsSource = null;
        VideosPreview.ItemsSource = NewVideos.Select(v => v.FileName).ToList();
        VideosPreview.IsVisible = NewVideos.Count > 0;
        NewVideosLabel.IsVisible = VideosPreview.IsVisible;
    }

    // ==== PICK NEW MEDIA ====
    private async void OnPickImagesClicked(object sender, EventArgs e)
    {
        var results = await FilePicker.PickMultipleAsync(new PickOptions
        {
            PickerTitle = "Select Images",
            FileTypes = FilePickerFileType.Images
        });

        if (results != null)
        {
            NewImages.AddRange(results);
            RefreshMediaViews();
        }
    }

    private async void OnPickVideosClicked(object sender, EventArgs e)
    {
        var videoTypes = new FilePickerFileType(new Dictionary<DevicePlatform, IEnumerable<string>>
        {
            { DevicePlatform.WinUI, new[] { "video/mp4", ".mp4", ".mov" } },
            { DevicePlatform.Android, new[] { "video/*" } },
            { DevicePlatform.iOS, new[] { "public.movie" } }
        });

        var results = await FilePicker.PickMultipleAsync(new PickOptions
        {
            PickerTitle = "Select Videos",
            FileTypes = videoTypes
        });

        if (results != null)
        {
            NewVideos.AddRange(results);
            RefreshMediaViews();
        }
    }

    // ==== DELETE OLD MEDIA ====
    private void OnDeleteOldMediaClicked(object sender, EventArgs e)
    {
        if (sender is Button btn && btn.CommandParameter is int mediaId)
        {
            var media = OldMedia.FirstOrDefault(m => m.Id == mediaId);
            if (media != null)
            {
                OldMedia.Remove(media);
                _deletedMediaIds.Add(mediaId);
                RefreshMediaViews();
            }
        }
    }

    // ==== SUBMIT EDIT ====
    private async void OnSaveClicked(object sender, EventArgs e)
    {
        ErrorLabel.IsVisible = false;

        string title = TitleEntry.Text?.Trim() ?? "";
        string content = ContentEditor.Text?.Trim() ?? "";

        if (string.IsNullOrEmpty(title))
        {
            ErrorLabel.Text = "Title is required.";
            ErrorLabel.IsVisible = true;
            return;
        }

        if (string.IsNullOrEmpty(content))
        {
            ErrorLabel.Text = "Content is required.";
            ErrorLabel.IsVisible = true;
            return;
        }

        SubmitButton.IsEnabled = false;
        BusyIndicator.IsRunning = true;
        BusyIndicator.IsVisible = true;

        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
            {
                await DisplayAlert("Error", "API base URL is not configured.", "OK");
                return;
            }

            var url = $"{baseUrl.TrimEnd('/')}/api/post/update/{_post.Id}";

            using var form = new MultipartFormDataContent();
            form.Add(new StringContent(_post.Id.ToString()), "Id");
            form.Add(new StringContent(title), "Title");
            form.Add(new StringContent(content), "Content");

            // xóa media cũ
            foreach (var id in _deletedMediaIds)
                form.Add(new StringContent(id.ToString()), "DeletedMediaIds");

            // thêm media mới
            foreach (var img in NewImages)
            {
                var stream = await img.OpenReadAsync();
                var fileContent = new StreamContent(stream);
                fileContent.Headers.ContentType = new MediaTypeHeaderValue("image/jpeg");
                form.Add(fileContent, "Images", img.FileName);
            }

            foreach (var vid in NewVideos)
            {
                var stream = await vid.OpenReadAsync();
                var fileContent = new StreamContent(stream);
                fileContent.Headers.ContentType = new MediaTypeHeaderValue("video/mp4");
                form.Add(fileContent, "Videos", vid.FileName);
            }

            var resp = await _httpClient.PutAsync(url, form);

            if (resp.IsSuccessStatusCode)
            {
                await DisplayAlert("Success", "Post updated!", "OK");
                await Navigation.PopAsync();
            }
            else
            {
                var msg = await resp.Content.ReadAsStringAsync();
                await DisplayAlert("Error", $"Server returned {resp.StatusCode}: {msg}", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
        finally
        {
            SubmitButton.IsEnabled = true;
            BusyIndicator.IsRunning = false;
            BusyIndicator.IsVisible = false;
        }
    }
}
