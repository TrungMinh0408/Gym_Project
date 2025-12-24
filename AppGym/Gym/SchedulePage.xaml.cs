using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http.Json;
using Microsoft.Maui.Controls;

namespace Gym;

public partial class SchedulePage : ContentPage
{
    ObservableCollection<CalendarCell> cells = new();
    ObservableCollection<UserScheduleDto> userSchedules = new();
    ObservableCollection<DayGroup> weekGroups = new();

    int displayYear;
    int displayMonth;
    private readonly HttpClient _httpClient = new();
    private bool isPT = false;

    public SchedulePage()
    {
        InitializeComponent();
        var now = DateTime.Now;
        displayYear = now.Year;
        displayMonth = now.Month;
        _ = LoadAndBuildCalendarAsync();
    }

    private async Task LoadAndBuildCalendarAsync()
    {
        await LoadUserSchedulesAsync(displayMonth, displayYear);
        BuildCalendar(displayYear, displayMonth);
    }

    private async Task LoadUserSchedulesAsync(int month, int year)
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            int userId = Preferences.Get("UserId", 0);
            string userRole = Preferences.Get("UserRole", string.Empty);
            if (userId == 0 || string.IsNullOrEmpty(baseUrl)) return;

            isPT = !string.IsNullOrEmpty(userRole) &&
                   (userRole.Equals("PT", StringComparison.OrdinalIgnoreCase) ||
                    userRole.Equals("Trainer", StringComparison.OrdinalIgnoreCase));

            List<UserScheduleDto>? result = null;

            if (isPT)
            {
                // gọi endpoint của PT
                try
                {
                    result = await _httpClient.GetFromJsonAsync<List<UserScheduleDto>>($"{baseUrl}/api/Schedule/pt/{userId}");
                }
                catch
                {
                    result = null;
                }
            }

            if (result == null)
            {
                result = await _httpClient.GetFromJsonAsync<List<UserScheduleDto>>($"{baseUrl}/api/Schedule/user/{userId}");
            }

            if (result != null)
            {
                var filtered = result.Where(s => s.StartTime.Month == month && s.StartTime.Year == year).ToList();
                userSchedules = new ObservableCollection<UserScheduleDto>(filtered);
                BuildCalendar(displayYear, displayMonth);
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"Cannot load schedules: {ex.Message}", "OK");
        }
    }

    void OnPrevMonth(object sender, TappedEventArgs e)
    {
        var dt = new DateTime(displayYear, displayMonth, 1).AddMonths(-1);
        displayYear = dt.Year; displayMonth = dt.Month;
        _ = LoadAndBuildCalendarAsync();
    }

    void OnNextMonth(object sender, TappedEventArgs e)
    {
        var dt = new DateTime(displayYear, displayMonth, 1).AddMonths(1);
        displayYear = dt.Year; displayMonth = dt.Month;
        _ = LoadAndBuildCalendarAsync();
    }

    void HighlightDaysWithSessions()
    {
        var today = DateTime.Now;
        foreach (var cell in cells)
        {
            if (cell.IsPlaceholder) continue;

            if (userSchedules.Any(s => s.StartTime.Day == cell.Day && s.StartTime.Month == displayMonth && s.StartTime.Year == displayYear))
            {
                cell.BgColor = Color.FromRgb(126, 87, 194);
                cell.TextColor = Colors.White;
                cell.FontAttributes = Microsoft.Maui.Controls.FontAttributes.Bold;
            }
            else if (cell.Day == today.Day && displayMonth == today.Month && displayYear == today.Year)
            {
                cell.BgColor = Colors.LightGray;
                cell.TextColor = Colors.Black;
                cell.FontAttributes = Microsoft.Maui.Controls.FontAttributes.Bold;
            }
            else
            {
                cell.BgColor = Colors.Transparent;
                cell.TextColor = Colors.Black;
                cell.FontAttributes = Microsoft.Maui.Controls.FontAttributes.None;
            }
        }

        CalendarGrid.ItemsSource = null;
        CalendarGrid.ItemsSource = cells;
    }

    void BuildCalendar(int year, int month)
    {
        cells.Clear();
        MonthLabel.Text = new DateTime(year, month, 1).ToString("MMMM yyyy");

        var first = new DateTime(year, month, 1);
        int firstDayOfWeek = ((int)first.DayOfWeek + 6) % 7;
        int daysInMonth = DateTime.DaysInMonth(year, month);

        for (int i = 0; i < firstDayOfWeek; i++)
            cells.Add(new CalendarCell { DayText = string.Empty, IsPlaceholder = true });

        for (int d = 1; d <= daysInMonth; d++)
            cells.Add(new CalendarCell { Day = d, DayText = d.ToString(), IsPlaceholder = false });

        while (cells.Count % 7 != 0)
            cells.Add(new CalendarCell { DayText = string.Empty, IsPlaceholder = true });

        HighlightDaysWithSessions();
        CalendarGrid.ItemsSource = cells;
    }

    private async void CalendarGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection?.Count > 0)
        {
            var cell = e.CurrentSelection[0] as CalendarCell;
            if (cell != null && !cell.IsPlaceholder && cell.Day != 0)
            {
                var sessionsOfDay = userSchedules
                    .Where(s => s.StartTime.Day == cell.Day && s.StartTime.Month == displayMonth && s.StartTime.Year == displayYear)
                    .OrderBy(s => s.StartTime)
                    .ToList();

                var vmList = sessionsOfDay.Select(s => new SessionViewModel
                {
                    ScheduleId = s.ScheduleId,
                    ClassName = s.ClassName,
                    StartTime = s.StartTime,
                    EndTime = s.EndTime,
                    RoomName = s.RoomName,
                    PTName = s.PTName,
                    ShowCheckin = isPT && !string.IsNullOrEmpty(s.ClassName)
                }).ToList();

                DaySessionsList.ItemsSource = vmList;
            }

            await Task.Delay(100);
            ((CollectionView)sender).SelectedItem = null;
        }
    }

    private void LoadWeekSessions(DateTime weekStart)
    {
        var weekSessions = userSchedules
            .Where(s => s.StartTime.Date >= weekStart.Date && s.StartTime.Date <= weekStart.AddDays(6).Date)
            .OrderBy(s => s.StartTime)
            .ToList();

        var grouped = weekSessions.GroupBy(s => s.StartTime.Date)
            .Select(g => new DayGroup { DayText = g.Key.ToString("dddd, dd/MM"), Sessions = g.ToList() })
            .ToList();

        weekGroups.Clear();
        foreach (var grp in grouped) weekGroups.Add(grp);

        var weekVm = weekGroups.Select(g => new WeekVm
        {
            Date = g.Sessions.First().StartTime.Date,
            DateText = g.DayText,
            Sessions = g.Sessions.Select(s => new SessionViewModel
            {
                ScheduleId = s.ScheduleId,
                ClassName = s.ClassName,
                StartTime = s.StartTime,
                EndTime = s.EndTime,
                RoomName = s.RoomName,
                PTName = s.PTName,
                ShowCheckin = isPT && !string.IsNullOrEmpty(s.ClassName)
            }).ToList()
        }).ToList();

        WeekSessionsList.ItemsSource = weekVm;
    }

    private bool isWeekMode = false;
    private void DayModeButton_Clicked(object sender, EventArgs e) { isWeekMode = false; DaySessionsList.IsVisible = true; WeekSessionsList.IsVisible = false; DayModeButton.BackgroundColor = Color.FromArgb("#2196F3"); DayModeButton.TextColor = Colors.White; WeekModeButton.BackgroundColor = Color.FromArgb("#E0E0E0"); WeekModeButton.TextColor = Colors.Black; }
    private void WeekModeButton_Clicked(object sender, EventArgs e) { isWeekMode = true; DaySessionsList.IsVisible = false; WeekSessionsList.IsVisible = true; WeekModeButton.BackgroundColor = Color.FromArgb("#2196F3"); WeekModeButton.TextColor = Colors.White; DayModeButton.BackgroundColor = Color.FromArgb("#E0E0E0"); DayModeButton.TextColor = Colors.Black; var today = DateTime.Now; var diff = (7 + (today.DayOfWeek - DayOfWeek.Monday)) % 7; var weekStart = today.AddDays(-diff).Date; LoadWeekSessions(weekStart); }

    // Khi PT bấm nút Điểm danh -> mở trang CheckinPage
    private async void OnCheckinButtonClicked(object sender, EventArgs e)
    {
        if (sender is Button btn && btn.CommandParameter is int scheduleId)
        {
            var className = (btn.BindingContext as SessionViewModel)?.ClassName ?? string.Empty;
            await Navigation.PushAsync(new CheckinPage(scheduleId, className));
        }
    }
}

// View model cho UI
public class SessionViewModel
{
    public int ScheduleId { get; set; }
    public string ClassName { get; set; } = string.Empty;
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public string? RoomName { get; set; }
    public string? PTName { get; set; }
    public bool ShowCheckin { get; set; } = false;
}

public class WeekVm
{
    public DateTime Date { get; set; }
    public string DateText { get; set; } = string.Empty;
    public List<SessionViewModel> Sessions { get; set; } = new();
}

public class CalendarCell
{
    public int Day { get; set; }
    public string DayText { get; set; } = string.Empty;
    public bool IsPlaceholder { get; set; }
    public Microsoft.Maui.Graphics.Color BgColor { get; set; } = Colors.Transparent;
    public Microsoft.Maui.Graphics.Color TextColor { get; set; } = Colors.Black;
    public Microsoft.Maui.Controls.FontAttributes FontAttributes { get; set; } = Microsoft.Maui.Controls.FontAttributes.None;
    public Microsoft.Maui.Graphics.Color BorderColor => IsPlaceholder ? Colors.Transparent : Colors.LightGray;
}

// DTO dùng client
public class UserScheduleDto
{
    public int ScheduleId { get; set; }
    public string ClassName { get; set; } = string.Empty;
    public DateTime StartTime { get; set; }
    public DateTime EndTime { get; set; }
    public string? RoomName { get; set; }
    public string? PTName { get; set; }
}

public class DayGroup { public string DayText { get; set; } = string.Empty; public List<UserScheduleDto> Sessions { get; set; } = new(); }

