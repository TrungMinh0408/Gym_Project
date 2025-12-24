using Microsoft.Maui.Controls;
using System.Net.Http.Json;
using Gym.Models;
using System.Diagnostics;

namespace Gym;

public partial class AddProgressPage : ContentPage
{
    private readonly HttpClient _http = new();
    private int _userId;           // ID khách hàng đang chỉnh sửa
    private int? _editId;          // ID progress đang edit (nếu có)
    private int _currentUserId;    // ID của PT đang login

    public AddProgressPage(int userId, int currentUserId, int? editId = null)
    {
        InitializeComponent();

        _userId = userId;
        _editId = editId;
        _currentUserId = currentUserId; // gán ID PT đang login

        HeaderLabel.Text = editId.HasValue ? "Edit Progress" : "Add Progress";

        if (editId.HasValue)
            _ = LoadExistingAsync(editId.Value);
    }

    private async Task LoadExistingAsync(int id)
    {
        try
        {
            SetBusy(true);

            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
                return;

            var list = await _http.GetFromJsonAsync<List<ProgressDto>>(
                $"{baseUrl}/api/UserProgressHistory/{_userId}");

            var item = list?.FirstOrDefault(x => x.Id == id);
            if (item == null)
            {
                await DisplayAlert("Error", "Cannot find record to edit.", "OK");
                return;
            }

            DateInput.Date = item.CreatedAt.Date;
            WeightInput.Text = item.Weight?.ToString();
            BodyFatInput.Text = item.BodyFat?.ToString();
            MuscleInput.Text = item.MuscleMass?.ToString();
            NotesInput.Text = item.Note;
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
        finally
        {
            SetBusy(false);
        }
    }

    private async void OnSaveClicked(object sender, EventArgs e)
    {
        string? baseUrl = AppConfig.Get("ApiBaseUrl");
        if (string.IsNullOrEmpty(baseUrl))
        {
            await DisplayAlert("Error", "API base URL not configured.", "OK");
            return;
        }

        // build payload including CreatedAt (important for update)
        var payload = new
        {
            Id = _editId ?? 0,
            UserId = _userId,
            PTUserId = _currentUserId,  // ID PT đang login
            Weight = TryDecimal(WeightInput.Text),
            BodyFat = TryDecimal(BodyFatInput.Text),
            MuscleMass = TryDecimal(MuscleInput.Text),
            Note = NotesInput.Text,
            CreatedAt = DateInput.Date // include date so server can validate/update
        };

        HttpResponseMessage resp = null;

        try
        {
            SetBusy(true);

            if (_editId.HasValue)
            {
                var url = $"{baseUrl}/api/UserProgressHistory/{_editId.Value}";
                Debug.WriteLine($"PUT {url} payload: {System.Text.Json.JsonSerializer.Serialize(payload)}");
                resp = await _http.PutAsJsonAsync(url, payload);
            }
            else
            {
                var url = $"{baseUrl}/api/UserProgressHistory";
                Debug.WriteLine($"POST {url} payload: {System.Text.Json.JsonSerializer.Serialize(payload)}");
                resp = await _http.PostAsJsonAsync(url, payload);
            }

            if (resp.IsSuccessStatusCode)
            {
                await DisplayAlert("Success", "Saved!", "OK");
                await Navigation.PopAsync();
            }
            else
            {
                var body = await resp.Content.ReadAsStringAsync();
                Debug.WriteLine($"Server returned {(int)resp.StatusCode} {resp.ReasonPhrase}: {body}");
                await DisplayAlert("Error", $"Server {(int)resp.StatusCode}: {body}", "OK");
            }
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"Exception saving progress: {ex}");
            await DisplayAlert("Error", ex.Message, "OK");
        }
        finally
        {
            SetBusy(false);
        }
    }

    private decimal? TryDecimal(string? text)
    {
        if (string.IsNullOrWhiteSpace(text)) return null;
        if (decimal.TryParse(text, System.Globalization.NumberStyles.AllowDecimalPoint, System.Globalization.CultureInfo.InvariantCulture, out var v))
            return v;
        // Try using current culture as fallback
        if (decimal.TryParse(text, out v))
            return v;
        return null;
    }

    private void SetBusy(bool busy)
    {
        BusyIndicator.IsVisible = busy;
        BusyIndicator.IsRunning = busy;
        SaveButton.IsEnabled = !busy;
    }
}
