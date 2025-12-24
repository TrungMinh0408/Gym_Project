using System.Net.Http.Json;
using Microsoft.Maui.Storage;
using Gym.Models;
using System.Text.Json;

namespace Gym;

public partial class PaymentConfirmationPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    private readonly MembershipPlan _plan;

    public PaymentConfirmationPage(MembershipPlan plan)   
    {
        InitializeComponent();
        _plan = plan;

        // Hiển thị thông tin gói tập
        PlanNameLabel.Text = _plan.PlanName;
        DurationLabel.Text = $"{_plan.DurationMonths} tháng";
        PriceLabel.Text = _plan.Price.ToString("C");
    }

    private async void OnConfirmPaymentClicked(object sender, EventArgs e)
    {
        int userId = Preferences.Get("UserId", 0);
        if (userId == 0)
        {
            await DisplayAlert("Error", "User chưa đăng nhập.", "OK");
            return;
        }

        var registration = new
        {
            UserId = userId,
            PlanId = _plan.Id,
            StartDate = DateTime.UtcNow.Date
        };

        string? baseUrl = AppConfig.Get("ApiBaseUrl");

        var options = new JsonSerializerOptions
        {
            PropertyNamingPolicy = null // giữ PascalCase để backend nhận đúng
        };

        var response = await _httpClient.PostAsJsonAsync($"{baseUrl}/api/Registration", registration, options);

        if (response.IsSuccessStatusCode)
        {
            await DisplayAlert("Thành công", "Đăng ký gói tập thành công!", "OK");
            await Navigation.PopAsync();
        }
        else
        {
            var msg = await response.Content.ReadAsStringAsync();
            await DisplayAlert("Lỗi", $"Đăng ký thất bại:\n{msg}", "OK");
        }
    }

}
