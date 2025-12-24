using System.Collections.ObjectModel;
using System.Net.Http.Json;
using System.Text.Json.Serialization;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;


namespace Gym;

public partial class PTListPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    public ObservableCollection<PTDto> PTList { get; set; } = new();

    public PTListPage()
    {
        InitializeComponent();
        PTCollectionView.ItemsSource = PTList;

        LoadPTList();
    }

    private async void LoadPTList()
    {

            int userId = Preferences.Get("UserId", 0);
            string? baseUrl = AppConfig.Get("ApiBaseUrl");

            if (string.IsNullOrWhiteSpace(baseUrl))
            {
                await DisplayAlert("Error", "API base URL is not configured.", "OK");
                return;
            }

            baseUrl = baseUrl.TrimEnd('/');
            PTList.Clear();

            // =======================
            // 1️⃣ PT TỪ CLASS (GIỮ NGUYÊN)
            // =======================
            var pts = await _httpClient.GetFromJsonAsync<List<PTDto>>
                ($"{baseUrl}/api/pt/my-classes-pts/{userId}")
                ?? new List<PTDto>();

            foreach (var pt in pts)
                PTList.Add(pt);

            // =======================
            // 2️⃣ PT TỪ PTAssignments (BẮT BUỘC LUÔN LOAD)
            // =======================
            var ptFromAssignments =
                await _httpClient.GetFromJsonAsync<List<PTDto>>
                ($"{baseUrl}/api/PTAssignments/{userId}")
                ?? new List<PTDto>();

            foreach (var pt in ptFromAssignments)
            {
                if (!PTList.Any(x => x.Id == pt.Id))
                    PTList.Add(pt);
            }

    }

    private async void OnViewFeedbackClicked(object sender, EventArgs e)
    {
        if (sender is Button btn && btn.CommandParameter is int ptId)
        {
            await Navigation.PushAsync(new PTFeedbackPage(ptId));
        }
    }


}

// DTO đơn giản
public class PTDto
{
    [JsonPropertyName("ptId")]
    public int Id { get; set; }

    [JsonPropertyName("ptName")]
    public string Name { get; set; } = "";

    [JsonPropertyName("email")]
    public string Email { get; set; } = "";
}