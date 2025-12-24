using Microsoft.Maui.Controls;
using System.Net.Http.Json;
using Microsoft.Maui.Storage;
using System.Linq;
using System.Collections.Generic;
using Gym.Models;


namespace Gym;

public partial class TrainerProgressPage : ContentPage
{
    private readonly HttpClient _http = new();

    public TrainerProgressPage()
    {
        InitializeComponent();
        _ = InitializeAsync();
    }

    private async Task InitializeAsync()
    {
        var role = Preferences.Get("UserRole", string.Empty);

        if (!(role.Equals("PT", System.StringComparison.OrdinalIgnoreCase) ||
              role.Equals("Trainer", System.StringComparison.OrdinalIgnoreCase)))
        {
            await DisplayAlert("Access denied", "This page is for Trainers only.", "OK");
            await Navigation.PopAsync();
            return;
        }

        await LoadStudents();
    }

    private async Task LoadStudents()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            if (string.IsNullOrEmpty(baseUrl))
            {
                await DisplayAlert("Error", "API base URL not configured.", "OK");
                return;
            }

            int trainerId = Preferences.Get("UserId", 0);
            if (trainerId == 0)
            {
                await DisplayAlert("Error", "Trainer not logged in.", "OK");
                return;
            }

            var baseTrimmed = baseUrl.TrimEnd('/');

            // 1) Load students directly assigned via PTAssignments (existing behavior)
            string assignmentsUrl = $"{baseTrimmed}/api/PTAssignments/trainer/{trainerId}/students";
            List<Users>? primaryList = null;
            try
            {
                primaryList = await _http.GetFromJsonAsync<List<Users>>(assignmentsUrl);
            }
            catch
            {
                primaryList = new List<Users>();
            }

            if (primaryList == null) primaryList = new List<Users>();

            // 2) Load UserSchedules detailed and include users whose schedule's class is assigned to this trainer
            string userScheduleDetailedUrl = $"{baseTrimmed}/api/UserSchedule/detailed";
            List<UserScheduleDetailedDto>? scheduleDetails = null;
            try
            {
                scheduleDetails = await _http.GetFromJsonAsync<List<UserScheduleDetailedDto>>(userScheduleDetailedUrl);
            }
            catch
            {
                scheduleDetails = new List<UserScheduleDetailedDto>();
            }

            var usersFromSchedules = new List<Users>();

            if (scheduleDetails != null && scheduleDetails.Count > 0)
            {
                // Filter entries where PTUserId matches trainerId
                var matched = scheduleDetails
                    .Where(s => s.PTUserId.HasValue && s.PTUserId.Value == trainerId)
                    .GroupBy(s => s.UserId)
                    .Select(g => g.First())
                    .ToList();

                foreach (var m in matched)
                {
                    // only add if not already in primaryList
                    if (!primaryList.Any(u => (u.Id ?? 0) == m.UserId))
                    {
                        usersFromSchedules.Add(new Users { Id = m.UserId, Name = m.UserName, Email = m.UserEmail });
                    }
                }
            }

            // Merge lists, primaryList first
            var merged = new List<Users>(primaryList);
            merged.AddRange(usersFromSchedules);

            // Bổ sung email cho các user còn thiếu bằng gọi GET /api/user/{id}
            var idsMissingEmail = merged
                .Where(u => string.IsNullOrEmpty(u.Email) && (u.Id ?? 0) != 0)
                .Select(u => u.Id!.Value)
                .Distinct()
                .ToList();

            if (idsMissingEmail.Any())
            {
                var tasks = idsMissingEmail.Select(async id =>
                {
                    try
                    {
                        var full = await _http.GetFromJsonAsync<Users>($"{baseTrimmed}/api/user/{id}");
                        if (full != null)
                        {
                            var target = merged.FirstOrDefault(x => (x.Id ?? 0) == id);
                            if (target != null)
                            {
                                target.Email = full.Email;
                                if (string.IsNullOrEmpty(target.Name)) target.Name = full.Name;
                            }
                        }
                    }
                    catch
                    {
                        // ignore individual failures
                    }
                });
                await Task.WhenAll(tasks);
            }

            StudentsList.ItemsSource = merged;
            EmptyLabel.IsVisible = merged == null || merged.Count == 0;
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }

    private async void OnViewProgressClicked(object sender, EventArgs e)
    {
        if (sender is Button btn && btn.CommandParameter is int userId)
            await Navigation.PushAsync(new UserProgressPage(userId));
    }

    // DTO matching API /api/UserSchedule/detailed response
    private class UserScheduleDetailedDto
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string? UserName { get; set; }
        public string? UserEmail { get; set; }
        public int? ScheduleId { get; set; }
        public int? ClassId { get; set; }
        public string? ClassName { get; set; }
        public DateTime? StartTime { get; set; }
        public DateTime? EndTime { get; set; }
        public int? PTUserId { get; set; }
        public int? RoomId { get; set; }
        public int? MaxParticipants { get; set; }
    }
}
