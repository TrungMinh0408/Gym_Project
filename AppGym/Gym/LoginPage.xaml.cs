using Microsoft.Maui.Controls;
using System.Net.Http.Json;
using Microsoft.Maui.Storage;
using Gym.Models;
namespace Gym;

public partial class LoginPage : ContentPage
{
    private readonly HttpClient _httpClient = new();

    public LoginPage()
    {
        InitializeComponent();
    }

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        string email = emailEntry.Text?.Trim();
        string password = passwordEntry.Text;

        //string email = "c@gmail.com";
        //string password = "123456";

        if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
        {
            await DisplayAlert("Error", "Please enter both email and password.", "OK");
            return;
        }

        string? baseUrl = AppConfig.Get("ApiBaseUrl");

        if (string.IsNullOrEmpty(baseUrl))
        {
            await DisplayAlert("Error", "API URL not configured.", "OK");
            return;
        }

        try
        {
            var users = await _httpClient.GetFromJsonAsync<List<Users>>($"{baseUrl}/api/user");

            var user = users?.FirstOrDefault(u =>
                u.Email.Equals(email, StringComparison.OrdinalIgnoreCase) &&
                u.Password == password);

            if (user != null)
            {
                // Lưu User ID, Role và Name vào Preferences
                Preferences.Set("UserId", user.Id ?? 0);
                Preferences.Set("UserRole", user.Role ?? string.Empty);
                Preferences.Set("UserName", user.Name ?? string.Empty);

                Application.Current.Windows[0].Page = new AppShell();
            }
            else
            {
                await DisplayAlert("Error", "Invalid email or password.", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", "Cannot connect to API: " + ex.Message, "OK");
        }
    }

    private async void OnSignUpClicked(object sender, EventArgs e)
    {
        // Điều hướng sang trang đăng ký
        await Navigation.PushAsync(new RegisterPage());
    }


}

