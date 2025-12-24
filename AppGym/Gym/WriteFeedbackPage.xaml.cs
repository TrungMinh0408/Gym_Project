using System.Net.Http.Json;
using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;

namespace Gym;

public partial class WriteFeedbackPage : ContentPage
{
    private readonly int _ptUserId;

    // Event để PTFeedbackPage nhận thông tin sau khi gửi xong
    public delegate void FeedbackHandler(int rating, string comment);
    public event FeedbackHandler FeedbackSubmitted;

    public WriteFeedbackPage(int ptUserId)
    {
        InitializeComponent();
        _ptUserId = ptUserId;
    }

    private async void OnSubmitClicked(object sender, EventArgs e)
    {
        int rating = int.TryParse(RatingEntry.Text, out int r) ? r : 0;
        string comment = CommentEditor.Text?.Trim() ?? "";

        if (rating < 1 || rating > 5)
        {
            await DisplayAlert("Lỗi", "Rating phải từ 1 đến 5.", "OK");
            return;
        }

        if (string.IsNullOrWhiteSpace(comment))
        {
            await DisplayAlert("Lỗi", "Bạn chưa nhập nội dung đánh giá.", "OK");
            return;
        }

        int userId = Preferences.Get("UserId", 0);
        string baseUrl = AppConfig.Get("ApiBaseUrl");

        var feedback = new
        {
            UserId = userId,
            PTUserId = _ptUserId,
            Comment = comment,
            Rating = rating
        };

        try
        {
            using var client = new HttpClient();
            var response = await client.PostAsJsonAsync($"{baseUrl}/api/feedback", feedback);

            if (response.IsSuccessStatusCode)
            {
                FeedbackSubmitted?.Invoke(rating, comment); // thông báo cho PTFeedbackPage
                await Navigation.PopModalAsync();
            }
            else
            {
                await DisplayAlert("Lỗi", "Không gửi được đánh giá.", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Lỗi", ex.Message, "OK");
        }
    }

    private async void OnCancelClicked(object sender, EventArgs e)
    {
        await Navigation.PopModalAsync();
    }
}
