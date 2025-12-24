using System.Net.Http.Json;
using Gym.Models;

namespace Gym;

public partial class AccountPage : ContentPage
{
    private readonly HttpClient _httpClient = new();

    public AccountPage()
    {
        InitializeComponent();
        LoadUserAsync();
    }

    private async void LoadUserAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            int userId = Preferences.Get("UserId", 0); // lưu UserId khi login

            if (string.IsNullOrEmpty(baseUrl) || userId == 0)
            {
                await DisplayAlert("Error", "Chưa cấu hình API hoặc User chưa login", "OK");
                return;
            }

            // 1️⃣ Lấy thông tin user
            var user = await _httpClient.GetFromJsonAsync<Users>($"{baseUrl}/api/User/{userId}");
            if (user != null)
            {
                lblName.Text = $"👤 Name: {user.Name}";
                lblEmail.Text = $"📧 Email: {user.Email}";
            }

            // 2️⃣ Lấy đăng ký hiện tại của user
            var registrations = await _httpClient.GetFromJsonAsync<List<Registration>>(
                $"{baseUrl}/api/Registration/User/{userId}"
            );

            var activeReg = registrations?.FirstOrDefault(r => r.Status == "Active");

            string membershipName = "Chưa đăng ký";

            if (activeReg != null)
            {
                // Nếu API trả về PlanId nhưng không include Plan
                if (activeReg.Plan != null)
                {
                    membershipName = activeReg.Plan.PlanName;
                }
                else if (activeReg.PlanId.HasValue)
                {
                    // Gọi tiếp API lấy tên plan
                    var plan = await _httpClient.GetFromJsonAsync<MembershipPlan>(
                        $"{baseUrl}/api/MembershipPlan/{activeReg.PlanId.Value}"
                    );
                    if (plan != null)
                        membershipName = plan.PlanName;
                }
            }

            lblRole.Text = $"🎯 Membership: {membershipName}";
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"Không thể tải thông tin:\n{ex.Message}", "OK");
        }
    }

    private async void OnPTListClicked(object sender, EventArgs e)
    {
        // Chuyển sang trang danh sách PT
        await Navigation.PushAsync(new PTListPage());
    }

    private async void OnLogoutClicked(object sender, EventArgs e)
    {
        bool confirm = await DisplayAlert("Logout", "Are you sure you want to log out?", "Yes", "Cancel");
        if (confirm)
        {
            Application.Current.Windows[0].Page = new NavigationPage(new LoginPage());
        }
    }

    private async void OnUserPlansClicked(object sender, EventArgs e)
    {
        int userId = Preferences.Get("UserId", 0);
        await Navigation.PushAsync(new UserPlansPage(userId));
    }

    private async void OnUserClassesClicked(object sender, EventArgs e)
    {
        int userId = Preferences.Get("UserId", 0);
        await Navigation.PushAsync(new UserClassesPage(userId));
    }
    private async void OnAboutClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new AboutUsPage());
    }
    private async void OnSupportClicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ContactPage());
    }
}
