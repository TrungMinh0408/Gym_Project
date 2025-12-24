using Gym.Models;
using Microsoft.Maui.Storage;
using System.Net.Http.Headers;

namespace Gym;

public partial class PostCreatePage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    private List<FileResult> _images = new();
    private List<FileResult> _videos = new();

    public PostCreatePage()
    {
        InitializeComponent();
    }

    private async void OnPickImagesClicked(object sender, EventArgs e)
    {
        var results = await FilePicker.PickMultipleAsync(new PickOptions
        {
            PickerTitle = "Select Images",
            FileTypes = FilePickerFileType.Images
        });

        if (results != null)
        {
            _images = results.ToList();
            ImagesPreview.ItemsSource = _images.Select(i => i.FullPath).ToList();
            ImagesPreview.IsVisible = _images.Count > 0; // bật CollectionView
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
            _videos = results.ToList();
            VideosPreview.ItemsSource = _videos.Select(v => v.FullPath).ToList(); // dùng FullPath cho MediaElement
            VideosPreview.IsVisible = _videos.Count > 0; // bật CollectionView
        }
    }


    private async void OnSubmitClicked(object sender, EventArgs e)
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

        int userId = Preferences.Get("UserId", 0);
        if (userId == 0)
        {
            await DisplayAlert("Error", "User not logged in", "OK");
            return;
        }

        SubmitButton.IsEnabled = false;
        BusyIndicator.IsRunning = true;
        BusyIndicator.IsVisible = true;

        try
        {
            var baseUrl = AppConfig.Get("ApiBaseUrl");
            var url = $"{baseUrl.TrimEnd('/')}/api/post/create";

            using var form = new MultipartFormDataContent();

            form.Add(new StringContent(userId.ToString()), "UserId");
            form.Add(new StringContent(title), "Title");
            form.Add(new StringContent(content), "Content");

            // Add images
            foreach (var img in _images)
            {
                var stream = await img.OpenReadAsync();
                var fileContent = new StreamContent(stream);
                fileContent.Headers.ContentType = new MediaTypeHeaderValue("image/jpeg");

                form.Add(fileContent, "Images", img.FileName);
            }

            // Add videos
            foreach (var vid in _videos)
            {
                var stream = await vid.OpenReadAsync();
                var fileContent = new StreamContent(stream);
                fileContent.Headers.ContentType = new MediaTypeHeaderValue("video/mp4");

                form.Add(fileContent, "Videos", vid.FileName);
            }

            var resp = await _httpClient.PostAsync(url, form);

            if (!resp.IsSuccessStatusCode)
            {
                var msg = await resp.Content.ReadAsStringAsync();
                await DisplayAlert("Error", msg, "OK");
                return;
            }

            await DisplayAlert("Success", "Post created!", "OK");
            await Navigation.PopAsync();
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
        finally
        {
            SubmitButton.IsEnabled = true;
            BusyIndicator.IsVisible = false;
            BusyIndicator.IsRunning = false;
        }
    }
}
