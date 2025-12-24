using Gym.Models;
using System.Net.Http.Json;
using System.Text.Json;

namespace Gym;

public partial class ChallengePage : ContentPage
{
    private readonly HttpClient _http = new();
    private readonly string baseUrl = AppConfig.Get("ApiBaseUrl");
    private List<Challenge> _challenges = new();

    public ChallengePage()
    {
        InitializeComponent();
        LoadChallenges();
    }
    private async void LoadChallenges()
    {
        try
        {
            int userId = Preferences.Get("UserId", 0);

            // 1️⃣ Lấy danh sách challenge
            _challenges = await _http.GetFromJsonAsync<List<Challenge>>(
                $"{baseUrl}/api/challenge");

            // 2️⃣ Gán trạng thái đã tham gia
            foreach (var c in _challenges)
            {
                c.IsJoined = await _http.GetFromJsonAsync<bool>(
                    $"{baseUrl}/api/challenge/{c.Id}/is-joined?userId={userId}");
            }

            // 3️⃣ Bind UI MỘT LẦN DUY NHẤT
            ChallengeList.ItemsSource = _challenges;
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }



    private async void OnChallengeSelected(object sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is Challenge challenge)
        {
            // Reset selection để lần sau click được lại
            ChallengeList.SelectedItem = null;

            // Navigation mượt hơn
            await Navigation.PushAsync(new LeaderboardPage(challenge.Id, challenge.Title));
        }
    }

    protected override void OnAppearing()
    {
        base.OnAppearing();
        ChallengeList.SelectedItem = null; // Reset selection mỗi lần load
    }

    private async void OnJoinClicked(object sender, EventArgs e)
    {
        var challenge = (sender as Button)?.CommandParameter as Challenge;
        if (challenge == null) return;

        int userId = Preferences.Get("UserId", 0);

        var res = await _http.PostAsync(
            $"{baseUrl}/api/challenge/{challenge.Id}/join?userId={userId}",
            null);

        if (res.IsSuccessStatusCode)
        {
            // ✅ cập nhật trạng thái
            challenge.IsJoined = true;

            // ✅ refresh UI an toàn
            ChallengeList.ItemsSource = null;
            ChallengeList.ItemsSource = _challenges;

            await DisplayAlert("OK", "Đã tham gia challenge 🎉", "OK");
        }
        else
        {
            await DisplayAlert("Lỗi", "Không thể tham gia", "OK");
        }
    }


    private async void OnProgressClicked(object sender, EventArgs e)
    {
        try
        {
            var challenge = (sender as Button)?.CommandParameter as Challenge;
            if (challenge == null) return;

            int userId = Preferences.Get("UserId", 0);

            var response = await _http.GetAsync(
                $"{baseUrl}/api/challenge/{challenge.Id}/progress?userId={userId}");

            if (!response.IsSuccessStatusCode)
            {
                await DisplayAlert("Thông báo", "Bạn chưa tham gia challenge này", "OK");
                return;
            }

            var json = await response.Content.ReadAsStringAsync();
            var doc = JsonDocument.Parse(json);
            var root = doc.RootElement;

            int currentPoints = root.GetProperty("currentPoints").GetInt32();
            double progressValue = root.GetProperty("progressValue").GetDouble();

            await DisplayAlert(
                "Tiến độ",
                $"⭐ Điểm: {currentPoints}\n📊 Tiến độ: {progressValue}%",
                "OK");
        }
        catch (Exception ex)
        {
            await DisplayAlert("Lỗi", ex.Message, "OK");
        }
    }

}
