using Gym.Models;
using System.Net.Http.Json;

namespace Gym;

public partial class UserClassesPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    private int _userId;

    public UserClassesPage(int userId)
    {
        InitializeComponent();
        _userId = userId;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadClassesAsync();
    }

    private async Task LoadClassesAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
            {
                await DisplayAlert("Error", "API base URL not configured.", "OK");
                return;
            }

            var classes = await _httpClient.GetFromJsonAsync<List<Class>>($"{baseUrl}/api/User/user/{_userId}/classes");

            ClassesListView.ItemsSource = classes ?? new List<Class>();
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", "Failed to load classes: " + ex.Message, "OK");
        }
    }
}
