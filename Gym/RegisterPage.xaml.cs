using Gym.Models;
using System.Net.Http.Json;

namespace Gym;

public partial class RegisterPage : ContentPage
{
    private readonly HttpClient _httpClient = new();

    public RegisterPage()
    {
        InitializeComponent();
        BirthdayPicker.Date = DateTime.Today.AddYears(-18); // default 18 tuổi
    }

    private async void OnRegisterClicked(object sender, EventArgs e)
    {
        ErrorLabel.IsVisible = false;

        string name = NameEntry.Text?.Trim() ?? "";
        string email = EmailEntry.Text?.Trim() ?? "";
        string password = PasswordEntry.Text ?? "";
        string confirmPassword = ConfirmPasswordEntry.Text ?? "";

        string gender = MaleRadio.IsChecked ? "Male"
                     : FemaleRadio.IsChecked ? "Female"
                     : OtherRadio.IsChecked ? "Other" : "";

        if (string.IsNullOrEmpty(name))
        {
            ShowError("Full Name is required.");
            return;
        }

        if (string.IsNullOrEmpty(email))
        {
            ShowError("Email is required.");
            return;
        }

        if (string.IsNullOrEmpty(password))
        {
            ShowError("Password is required.");
            return;
        }

        if (password != confirmPassword)
        {
            ShowError("Passwords do not match.");
            return;
        }

        if (string.IsNullOrEmpty(gender))
        {
            ShowError("Please select gender.");
            return;
        }

        RegisterButton.IsEnabled = false;
        BusyIndicator.IsVisible = true;
        BusyIndicator.IsRunning = true;

        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
            {
                ShowError("API base URL is not configured.");
                return;
            }

            var user = new Users
            {
                Name = name,
                Email = email,
                Password = password,
                Gender = gender,
                Age = CalculateAge(BirthdayPicker.Date),
                CreatedAt = DateTime.UtcNow
            };

            var resp = await _httpClient.PostAsJsonAsync($"{baseUrl}/api/user", user);

            if (resp.IsSuccessStatusCode)
            {
                await DisplayAlert("Success", "Account created successfully!", "OK");
                await Navigation.PopAsync();
            }
            else
            {
                var msg = await resp.Content.ReadAsStringAsync();
                ShowError($"Register failed: {msg}");
            }
        }
        catch (Exception ex)
        {
            ShowError("Register failed: " + ex.Message);
        }
        finally
        {
            RegisterButton.IsEnabled = true;
            BusyIndicator.IsVisible = false;
            BusyIndicator.IsRunning = false;
        }
    }

    private void ShowError(string message)
    {
        ErrorLabel.Text = message;
        ErrorLabel.IsVisible = true;
    }

    private int CalculateAge(DateTime birthDate)
    {
        var today = DateTime.Today;
        int age = today.Year - birthDate.Year;
        if (birthDate.Date > today.AddYears(-age)) age--;
        return age;
    }

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }
}
