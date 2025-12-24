using Gym;
using Gym.Models;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading.Tasks;
using Microsoft.Maui.Storage;
using Microsoft.Maui.Controls; // Element, VisualElement, FindByName

namespace Gym.Pages;

public partial class PostListPage : ContentPage
{
    private readonly HttpClient _httpClient = new();

    public Command<string> ImageClickedCommand { get; set; }


    public PostListPage()
    {
        InitializeComponent();
        BindingContext = this;

        ImageClickedCommand = new Command<string>(ShowFullImage);
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadPostsAsync();
        string role = Preferences.Get("UserRole", "");

        CreatePostButton.IsVisible = role == "Trainer";

    }

    // ================================
    // LOAD POSTS
    // ================================
    private async Task LoadPostsAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
            {
                await DisplayAlert("Error", "API base URL is not configured.", "OK");
                return;
            }

            var posts = await _httpClient.GetFromJsonAsync<List<Post>>($"{baseUrl}/api/post");

            int currentUserId = Preferences.Get("UserId", 0);
            string currentUserName = Preferences.Get("UserName", string.Empty);

            if (posts != null)
            {
                foreach (var p in posts)
                {
                    p.Images.Clear();
                    p.Videos.Clear();

                    if (p.Media != null)
                    {
                        foreach (var m in p.Media)
                        {
                            if (m.MediaType == "image")
                                p.Images.Add(m);
                            else if (m.MediaType == "video")
                                p.Videos.Add(m);
                        }
                    }

                    bool idMatch = p.UserId.HasValue && p.UserId.Value == currentUserId;
                    bool nameMatch = !string.IsNullOrEmpty(p.UserName) &&
                                     !string.IsNullOrEmpty(currentUserName) &&
                                     p.UserName.Equals(currentUserName, StringComparison.OrdinalIgnoreCase);

                    p.IsOwned = idMatch || nameMatch;
                }
            }

            PostListView.ItemsSource = posts ?? new List<Post>();
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", "Cannot load posts: " + ex.Message, "OK");
        }
    }

    // ================================
    // CREATE POST
    // ================================
    private async void OnCreatePostClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PostCreatePage());
    }

    // ================================
    // EDIT
    // ================================
    private async void OnEditClicked(object sender, EventArgs e)
    {
        var post = (sender as Button)?.CommandParameter as Post;
        if (post == null) return;
        await Navigation.PushAsync(new PostEditPage(post));
    }

    // ================================
    // DELETE
    // ================================
    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        var btn = sender as Button;
        var post = btn?.CommandParameter as Post;
        if (post == null) return;

        // Hiển thị xác nhận trước khi xóa
        bool confirm = await DisplayAlert("Confirm Delete",
                                          $"Are you sure you want to delete the post '{post.Title}'?",
                                          "Yes", "No");
        if (!confirm) return;

        try
        {
            // Tùy chọn: disable nút xóa khi đang xử lý
            btn.IsEnabled = false;

            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            var resp = await _httpClient.DeleteAsync($"{baseUrl}/api/post/{post.Id}");

            if (resp.IsSuccessStatusCode)
            {
                // Xóa khỏi danh sách hiện tại mà không load lại từ server
                if (PostListView.ItemsSource is List<Post> items)
                {
                    items.Remove(post);
                    PostListView.ItemsSource = null;
                    PostListView.ItemsSource = items;
                }

                await DisplayAlert("Deleted", $"Post '{post.Title}' has been deleted.", "OK");
            }
            else
            {
                var msg = await resp.Content.ReadAsStringAsync();
                await DisplayAlert("Error", $"Delete failed: {msg}", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", "Delete failed: " + ex.Message, "OK");
        }
        finally
        {
            btn.IsEnabled = true;
        }
    }


    // ================================
    // HELPER: tìm CarouselView bằng cách duyệt lên cây từ Button
    // ================================
    private CarouselView? FindCarouselForButton(Button btn)
    {
        Element? current = btn;
        while (current != null)
        {
            try
            {
                // tìm trong phạm vi element hiện tại (nếu DataTemplate có đặt x:Name cho Carousel)
                var carousel = current.FindByName<CarouselView>("PostMediaCarousel");
                if (carousel != null)
                    return carousel;
            }
            catch
            {
                // bỏ qua nếu không hỗ trợ FindByName ở cấp này
            }

            // leo lên parent
            current = current.Parent as Element;
        }

        return null;
    }

    // ================================
    // PREV / NEXT BUTTONS
    // ================================
    private void OnPrevMediaClicked(object sender, EventArgs e)
    {
        if (sender is not Button btn) return;

        // tìm carousel tương ứng
        var carousel = FindCarouselForButton(btn);
        if (carousel == null) return;

        if (carousel.Position > 0)
            carousel.Position--;
    }

    private void OnNextMediaClicked(object sender, EventArgs e)
    {
        if (sender is not Button btn) return;

        var carousel = FindCarouselForButton(btn);
        if (carousel == null) return;

        // số lượng item trong carousel (ItemsSource có thể là IList)
        int count = 0;
        if (carousel.ItemsSource is System.Collections.ICollection coll)
            count = coll.Count;
        else if (carousel.ItemsSource is IEnumerable<PostMedia> list)
            count = System.Linq.Enumerable.Count(list);

        if (carousel.Position < count - 1)
            carousel.Position++;
    }

    private void ShowFullImage(string imageUrl)
    {
        FullImageView.Source = imageUrl;
        FullImageModal.IsVisible = true;
    }
    private void OnCloseFullImage(object sender, EventArgs e)
    {
        FullImageModal.IsVisible = false;
        FullImageView.Source = null;
    }

}
