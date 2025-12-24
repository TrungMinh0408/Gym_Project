using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http.Json;
using Microsoft.Maui.Controls;

namespace Gym;

public partial class CheckinPage : ContentPage
{
    private readonly int _scheduleId;
    private readonly HttpClient _httpClient = new();
    public ObservableCollection<ParticipantDto> Participants { get; set; } = new();

    public CheckinPage(int scheduleId, string className)
    {
        InitializeComponent();
        _scheduleId = scheduleId;
        Title = $"Điểm danh - {className}";
        ParticipantsList.ItemsSource = Participants;
        _ = LoadParticipantsAsync();
    }

    private async Task LoadParticipantsAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl)) return;

            var result = await _httpClient.GetFromJsonAsync<List<ParticipantDto>>($"{baseUrl}/api/attendance/schedule/{_scheduleId}/participants");
            Participants.Clear();
            if (result != null)
            {
                foreach (var p in result) Participants.Add(p);
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"Cannot load participants: {ex.Message}", "OK");
        }
    }

    private async void OnSaveClicked(object sender, EventArgs e)
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl)) return;

            var payload = new
            {
                ScheduleId = _scheduleId,
                AttendanceDate = DateTime.UtcNow.Date,
                Attendees = Participants.Select(p => new { p.UserId, Present = p.IsPresent }).ToList()
            };

            var resp = await _httpClient.PostAsJsonAsync($"{baseUrl}/api/attendance/mark", payload);
            if (resp.IsSuccessStatusCode)
            {
                await DisplayAlert("OK", "Lưu điểm danh thành công.", "OK");
                await Navigation.PopAsync();
            }
            else
            {
                var txt = await resp.Content.ReadAsStringAsync();
                await DisplayAlert("Error", $"Save failed: {txt}", "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"Cannot save: {ex.Message}", "OK");
        }
    }
}

public class ParticipantDto
{
    public int UserScheduleId { get; set; }
    public int UserId { get; set; }
    public string Name { get; set; } = string.Empty;
    public bool IsPresent { get; set; } = false;
}