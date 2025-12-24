using System.Collections.ObjectModel;
using System.Net.Http.Json;

namespace Gym;

public partial class PTFeedbackPage : ContentPage
{
    private int _ptUserId;

    public string PTName { get; set; }
    public string Specialty { get; set; }
    public int ExperienceYears { get; set; }
    public string Email { get; set; }

    public ObservableCollection<FeedbackDto> Feedbacks { get; set; } = new();

    public PTFeedbackPage(int ptUserId)
    {
        InitializeComponent();
        _ptUserId = ptUserId;

        BindingContext = this;

        LoadFeedback();
    }

    private async Task LoadFeedback()
    {
        try
        {
            using var http = new HttpClient();
            string? baseUrl = AppConfig.Get("ApiBaseUrl");

            if (string.IsNullOrEmpty(baseUrl))
            {
                await DisplayAlert("Error", "API URL not configured.", "OK");
                return;
            }


            var response = await http.GetFromJsonAsync<PTFeedbackResponse>($"{baseUrl}/api/feedback/pt/{_ptUserId}");

            if (response == null) return;

            // Set PT info
            PTName = response.PtInfo.Name;
            Specialty = response.PtInfo.Specialty;
            ExperienceYears = response.PtInfo.ExperienceYears;
            Email = response.PtInfo.Email;

            OnPropertyChanged(nameof(PTName));
            OnPropertyChanged(nameof(Specialty));
            OnPropertyChanged(nameof(ExperienceYears));
            OnPropertyChanged(nameof(Email));

            // Set feedback list
            Feedbacks.Clear();
            foreach (var fb in response.Feedbacks)
                Feedbacks.Add(fb);
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnAddFeedbackClicked(object sender, EventArgs e)
    {
        var writePage = new WriteFeedbackPage(_ptUserId);
        await Navigation.PushModalAsync(writePage);

        writePage.FeedbackSubmitted += async (rating, comment) =>
        {
            // reload feedback list after submission
            await LoadFeedback();
        };
    }
}

public class PTFeedbackResponse
{
    public PTInfoDto PtInfo { get; set; }
    public List<FeedbackDto> Feedbacks { get; set; }
}

public class PTInfoDto
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Specialty { get; set; }
    public int ExperienceYears { get; set; }
    public string Email { get; set; }
}

public class FeedbackDto
{
    public int FeedbackId { get; set; }
    public string Comment { get; set; }
    public int Rating { get; set; }
    public DateTime CreatedAt { get; set; }
    public string UserName { get; set; }

    // Tính số sao
    public string RatingStars => new string('⭐', Rating);
}
