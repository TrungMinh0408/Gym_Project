using System.Collections.ObjectModel;
using System.Net.Http.Json;
using Gym.Models; 

namespace Gym;

public partial class MembershipPlansPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    public ObservableCollection<MembershipPlan> Plans { get; set; } = new();

    public MembershipPlansPage()
    {
        InitializeComponent();
        PlansCollection.ItemsSource = Plans;
        LoadPlansAsync();
    }

    private async void LoadPlansAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
            {
                await DisplayAlert("Error", "API base URL not configured.", "OK");
                return;
            }

            // 🔥 Gọi API thật để lấy danh sách gói tập
            var response = await _httpClient.GetAsync($"{baseUrl}/api/MembershipPlan");

            if (!response.IsSuccessStatusCode)
            {
                await DisplayAlert("Error", $"Failed to load plans. ({response.StatusCode})", "OK");
                return;
            }

            var result = await response.Content.ReadFromJsonAsync<List<MembershipPlan>>();

            Plans.Clear();
            if (result != null)
            {
                foreach (var plan in result)
                    Plans.Add(plan);
            }
        }
        catch (HttpRequestException ex)
        {
            await DisplayAlert("Network Error", $"Cannot connect to server:\n{ex.Message}", "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"Failed to load plans:\n{ex.Message}", "OK");
        }
    }

    private async void PaymentConfirmationPage_Clicked(object sender, EventArgs e)
    {
        if (sender is Button btn && btn.CommandParameter is int planId)
        {
            // Tìm gói tập trong danh sách
            var selectedPlan = Plans.FirstOrDefault(p => p.Id == planId);
            if (selectedPlan != null)
            {
                // Truyền gói tập vào trang PaymentConfirmationPage
                await Navigation.PushAsync(new PaymentConfirmationPage(selectedPlan));
            }
        }
    }

}


