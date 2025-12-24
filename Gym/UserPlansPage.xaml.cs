using Gym.Models;
using System.Net.Http.Json;

namespace Gym;

public partial class UserPlansPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    private int _userId;

    public UserPlansPage(int userId)
    {
        InitializeComponent();
        _userId = userId;
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();
        await LoadPlansAsync();
    }

    private async Task LoadPlansAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
            {
                await DisplayAlert("Error", "API base URL not configured.", "OK");
                return;
            }

            var plans = await _httpClient.GetFromJsonAsync<List<MembershipPlan>>($"{baseUrl}/api/User/user/{_userId}/plans");

            PlansListView.ItemsSource = plans ?? new List<MembershipPlan>();
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", "Failed to load plans: " + ex.Message, "OK");
        }
    }
}
