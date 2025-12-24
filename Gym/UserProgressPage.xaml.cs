using Microsoft.Maui.Controls;
using System.Net.Http.Json;
using Gym.Models;
using Microsoft.Maui.Storage;
using System.Linq;

namespace Gym;

public partial class UserProgressPage : ContentPage
{
    private readonly HttpClient _http = new();
    private int _userId;

    public UserProgressPage(int userId)
    {
        InitializeComponent();
        _userId = userId;
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        _ = LoadAsync();
    }

    private async Task LoadAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl)) return;

            // Load user info
            var user = await _http.GetFromJsonAsync<Users>($"{baseUrl}/api/user/{_userId}");
            UserNameLabel.Text = user?.Name ?? $"User {_userId}";

            // Lấy danh sách progress từ API
            var list = await _http.GetFromJsonAsync<List<ProgressDto>>($"{baseUrl}/api/UserProgressHistory/{_userId}");
            if (list == null) list = new List<ProgressDto>();

            // Nếu current account là PT/Trainer => lọc chỉ những record do PT đó tạo (PTUserId)
            var currentUserId = Preferences.Get("UserId", 0);
            var role = Preferences.Get("UserRole", string.Empty);

            if (currentUserId != 0 &&
                !string.IsNullOrEmpty(role) &&
                (role.Equals("PT", System.StringComparison.OrdinalIgnoreCase) ||
                 role.Equals("Trainer", System.StringComparison.OrdinalIgnoreCase)))
            {
                list = list.Where(p => p.PTUserId.HasValue && p.PTUserId.Value == currentUserId).ToList();
            }

            ProgressList.ItemsSource = list;
            NoHistoryLabel.IsVisible = !list.Any();
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnAddClicked(object sender, EventArgs e)
    {
        var currentUserId = Preferences.Get("UserId", 0);
        if (currentUserId == 0)
        {
            await DisplayAlert("Error", "Current user not found.", "OK");
            return;
        }

        await Navigation.PushAsync(new AddProgressPage(_userId, currentUserId));
    }

    private async void OnEditClicked(object sender, EventArgs e)
    {
        if (sender is Button btn && btn.CommandParameter is int id)
        {
            var currentUserId = Preferences.Get("UserId", 0);
            if (currentUserId == 0)
            {
                await DisplayAlert("Error", "Current user not found.", "OK");
                return;
            }

            await Navigation.PushAsync(new AddProgressPage(_userId, currentUserId, id));
        }
    }
}