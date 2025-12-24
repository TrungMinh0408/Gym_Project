using System.Collections.ObjectModel;
using System.Net.Http.Json;
using Microsoft.Maui.Storage;

namespace Gym;

public partial class ClassesPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    private ObservableCollection<ClassDetailDto> _allClasses = new();
    private ObservableCollection<ClassDetailDto> _filteredClasses = new();

    public ClassesPage()
    {
        InitializeComponent();
        LoadClasses();
    }

    private async void LoadClasses()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            var list = await _httpClient.GetFromJsonAsync<List<ClassDetailDto>>($"{baseUrl}/api/class/details");

            if (list != null)
            {
                _allClasses = new ObservableCollection<ClassDetailDto>(list);
                _filteredClasses = new ObservableCollection<ClassDetailDto>(_allClasses);
                ClassesList.ItemsSource = _filteredClasses;
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", $"Cannot load classes: {ex.Message}", "OK");
        }
    }


    private void OnSearchTextChanged(object sender, TextChangedEventArgs e) => FilterAndSort();
    private void OnSortChanged(object sender, EventArgs e) => FilterAndSort();

    private void FilterAndSort()
    {
        string query = SearchBar.Text?.ToLower() ?? "";
        var result = _allClasses
            .Where(c => c.ClassName.ToLower().Contains(query));

        switch (SortPicker.SelectedIndex)
        {
            case 1: result = result.OrderBy(c => c.MaxParticipants); break;
            case 2: result = result.OrderByDescending(c => c.MaxParticipants); break;
        }

        _filteredClasses = new ObservableCollection<ClassDetailDto>(result);
        ClassesList.ItemsSource = _filteredClasses;
    }

    // 🔹 Xử lý đăng ký lớp
    private async void OnRegisterClassClicked(object sender, EventArgs e)
    {
        if (sender is Button btn && btn.CommandParameter is int classId)
        {
            int userId = Preferences.Get("UserId", 0);
            if (userId == 0)
            {
                await DisplayAlert("Error", "User chưa đăng nhập.", "OK");
                return;
            }

            var registration = new
            {
                UserId = userId,
                ClassId = classId,
                StartDate = DateTime.UtcNow.Date
            };


            try
            {
                string? baseUrl = AppConfig.Get("ApiBaseUrl");
                var response = await _httpClient.PostAsJsonAsync($"{baseUrl}/api/Registration", registration);

                if (response.IsSuccessStatusCode)
                    await DisplayAlert("Thành công", "Đăng ký lớp thành công!", "OK");
                else
                {
                    var msg = await response.Content.ReadAsStringAsync();
                    await DisplayAlert("Lỗi", $"Đăng ký thất bại:\n{msg}", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Đăng ký thất bại:\n{ex.Message}", "OK");
            }
        }
    }

    private async void OnViewPTClicked(object sender, EventArgs e)
    {
        int ptUserId = 0;

        // Lấy PTUserId từ BindingContext của Label
        if (sender is BindableObject bo && bo.BindingContext is ClassDetailDto cls)
        {
            ptUserId = cls.PTUserId ?? 0;
        }

        if (ptUserId == 0)
        {
            await DisplayAlert("Thông báo", "PT chưa được gán cho lớp này.", "OK");
            return;
        }

        // Điều hướng sang trang Feedback
        await Navigation.PushAsync(new PTFeedbackPage(ptUserId));
    }



}

// 🔹 Model nâng cấp
public class ClassDetailDto
{
    public int Id { get; set; }
    public string ClassName { get; set; } = string.Empty;
    public int MaxParticipants { get; set; }

    // PT info
    public int? PTUserId { get; set; }
    public string? PTName { get; set; }
    public string? Specialty { get; set; }
    public int? ExperienceYears { get; set; }

    // Room info
    public int? RoomId { get; set; }
    public string? RoomName { get; set; }
    public int? Capacity { get; set; }
    public string Status { get; set; } = "Pending";

    public string StatusText
    {
        get
        {
            return Status switch
            {
                "Open" => "Đang diễn ra",
                "Pending" => "Chưa khai giảng",
                "Closed" => "Đã kết thúc",
                _ => "Không xác định"
            };
        }
    }

    // Color hiển thị
    public Color StatusColor
    {
        get
        {
            return Status switch
            {
                "Open" => Colors.Green,
                "Pending" => Colors.Orange,
                "Closed" => Colors.Gray,
                _ => Colors.Blue
            };
        }
    }
}

