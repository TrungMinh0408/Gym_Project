using Gym.Models;
using System.Net.Http.Json;

namespace Gym;

public partial class LeaderboardPage : ContentPage
{
    private readonly HttpClient _http = new();
    private readonly string baseUrl = AppConfig.Get("ApiBaseUrl");

    private readonly int _challengeId;

    public LeaderboardPage(int challengeId, string challengeTitle)
    {
        InitializeComponent();
        _challengeId = challengeId;

        TitleLabel.Text = $"Leaderboard - {challengeTitle}";
        LoadLeaderboard();
    }

    private async void LoadLeaderboard()
    {
        try
        {
            var list = await _http.GetFromJsonAsync<List<LeaderboardItem>>(
                $"{baseUrl}/api/challenge/leaderboard/{_challengeId}");


            for (int i = 0; i < list.Count; i++)
            {
                list[i].Rank = i + 1;
            }

            LeaderboardList.ItemsSource = list;

        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }
}


