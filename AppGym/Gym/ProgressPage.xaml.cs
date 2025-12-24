using Syncfusion.Maui.Charts;
using System.Net.Http.Json;
using Gym.Models;
namespace Gym;

public partial class ProgressPage : ContentPage
{
    private readonly HttpClient _httpClient = new();
    private List<ProgressChartData> _chartData = new();
    private int _currentIndex = 0;
    private DateTime _currentWeekStart;
    private DateTime _currentWeekEnd;
    private List<UserProgressModel> _allProgress = new();
    private Users? _userProfile;
    private bool _userLoaded = false;


    public ProgressPage()
    {
        InitializeComponent();

        // màu series
        FatSeries.Fill = new SolidColorBrush(Color.FromArgb("#ff6b6b"));
        MuscleSeries.Fill = new SolidColorBrush(Color.FromArgb("#4caf50"));
        RemainingSeries.Fill = new SolidColorBrush(Color.FromArgb("#42a5f5"));

        // khi chart thay đổi kích thước, cập nhật vị trí overlay
        ProgressChart.SizeChanged += (s, e) => UpdateSelectionOverlayPosition();
        LoadProgressAsync();
    }

    private async Task LoadUserInfoAsync()
    {
        try
        {
            string? baseUrl = AppConfig.Get("ApiBaseUrl");
            int userId = Preferences.Get("UserId", 0);

            var response = await _httpClient.GetAsync($"{baseUrl}/api/User/{userId}");
            if (!response.IsSuccessStatusCode)
                return;

            _userProfile = await response.Content.ReadFromJsonAsync<Users>();
            _userLoaded = true;
        }
        catch
        {
            _userLoaded = false; // tránh crash
        }
    }


    private async void LoadProgressAsync()
    {
        string? baseUrl = AppConfig.Get("ApiBaseUrl");
        int userId = Preferences.Get("UserId", 0);

        // Load User trước để có age/gender
        await LoadUserInfoAsync();

        var response = await _httpClient.GetAsync($"{baseUrl}/api/UserProgressHistory/{userId}");
        _allProgress = await response.Content.ReadFromJsonAsync<List<UserProgressModel>>()
                        ?? new List<UserProgressModel>();

        if (!_allProgress.Any()) return;

        _allProgress = _allProgress.OrderBy(x => x.CreatedAt).ToList();

        _currentWeekStart = DateTime.Today.AddDays(-(int)DateTime.Today.DayOfWeek + 1);
        _currentWeekEnd = _currentWeekStart.AddDays(6);

        LoadWeekData();
    }


    private void LoadWeekData()
    {
        var days = Enumerable.Range(0, 7)
            .Select(i => _currentWeekStart.AddDays(i))
            .ToList();

        _chartData = days.Select(d =>
        {
            // tìm progress đúng ngày
            var exact = _allProgress.FirstOrDefault(x => x.CreatedAt.ToLocalTime().Date == d.Date);

            // nếu không có exact thì lấy nearest trong tuần (có thể null)
            var source = exact ?? GetNearestProgress(d);

            return new ProgressChartData
            {
                Date = d.ToString("dd/MM"),
                ColumnDate = d,               // <-- ngày của cột (quan trọng)
                Muscle = source != null ? (double)(source.Weight * (source.MuscleMass / 100)) : 0,
                Fat = source != null ? (double)(source.Weight * (source.BodyFat / 100)) : 0,
                Remaining = source != null ? (double)(source.Weight - (source.Weight * (source.MuscleMass / 100)) - (source.Weight * (source.BodyFat / 100))) : 0,
                SourceProgress = source,
                IsOriginal = exact != null    // chính xác có dữ liệu ngày đó hay chỉ copy
            };
        }).ToList();

        MuscleSeries.ItemsSource = _chartData;
        FatSeries.ItemsSource = _chartData;
        RemainingSeries.ItemsSource = _chartData;

        double max = _chartData.Select(x => x.Muscle + x.Fat + x.Remaining).DefaultIfEmpty(0).Max();

        YAxis.Minimum = 0;
        double maxDisplay = Math.Ceiling(max + 1);
        YAxis.Maximum = maxDisplay;
        double interval = Math.Ceiling((maxDisplay - 0) / 5.0);
        YAxis.Interval = interval;

        // mặc định chọn item cuối cùng có dữ liệu (original) hoặc 0
        int last = Math.Min(6, _chartData.FindLastIndex(x => x.SourceProgress != null));
        SelectIndex(last < 0 ? 0 : last);

        LblWeekRange.Text = $"{_currentWeekStart:dd/MM} - {_currentWeekEnd:dd/MM}";

    }

    private UserProgressModel? GetNearestProgress(DateTime date)
    {
        var weekData = _allProgress
            .Where(x => x.CreatedAt.ToLocalTime().Date >= _currentWeekStart && x.CreatedAt.ToLocalTime().Date <= _currentWeekEnd)
            .OrderBy(x => x.CreatedAt)
            .ToList();

        if (!weekData.Any()) return null;

        var before = weekData.LastOrDefault(x => x.CreatedAt.ToLocalTime().Date < date.Date);
        if (before != null) return before;

        var after = weekData.FirstOrDefault(x => x.CreatedAt.ToLocalTime().Date > date.Date);
        return after;
    }

    private void SelectIndex(int index)
    {
        if (index < 0 || index >= _chartData.Count) return;

        _currentIndex = index;
        var data = _chartData[index];

        // Hiển thị date luôn là ngày của cột (ColumnDate)
        var columnDate = data.ColumnDate;
        LblDate.Text = $"Ngày: {columnDate:dd/MM/yyyy}";

        // Hiển thị thông tin: nếu có SourceProgress thì dùng (có thể là bản copy),
        // nếu không có thì hiện -- .
        if (data.SourceProgress != null)
        {
            DisplayProgress(data.SourceProgress);

            if (data.SourceProgress != null)
            {
                var p = data.SourceProgress;

                LblBMIValue.Text = $"BMI:{CalcBMI(p) ?? 0}";
                LblBMIDesc.Text = GetBMIDesc(CalcBMI(p));

                LblWHRValue.Text = $"WHR:{CalcWHR(p) ?? 0}";
                LblWHRDesc.Text = GetWHRDesc(CalcWHR(p), _userProfile?.Gender);

                LblTDEEValue.Text = $"TDEE:{CalcTDEE(p) ?? 0}";
                LblTDEEDesc.Text = "Nhu cầu năng lượng mỗi ngày";

                LblTBWValue.Text = $"TBW:{CalcTBW(p) ?? 0}";
                LblTBWDesc.Text = GetTBWDesc(CalcTBW(p));

            }
            else
            {
                LblBMIValue.Text = "BMI: --";
                LblWHRValue.Text = "WHR: --";
                LblTDEEValue.Text = "TDEE: --";
                LblTBWValue.Text = "TBW: --";
            }

        }
        else
        {
            LblWeight.Text = "Weight: --";
            LblBodyFat.Text = "Body Fat: --";
            LblMuscleMass.Text = "Muscle Mass: --";
            LblNote.Text = "";
        }

        // cập nhật overlay highlight
        UpdateSelectionOverlayPosition();
    }

    private void UpdateSelectionOverlayPosition()
    {
        if (_chartData == null || _chartData.Count == 0 ||
            double.IsNaN(ProgressChart.Width) || ProgressChart.Width <= 0)
        {
            SelectionOverlay.IsVisible = false;
            return;
        }

        int n = _chartData.Count;

        // --------- TỰ CHỈNH Ở ĐÂY ---------
        double columnGap = -4;       // khoảng cách giữa các cột (px)
        double widthScale = 0.70;    // overlay rộng bao nhiêu so với 1 cột
        double adjustLeft = 27;       // dịch toàn bộ overlay trái/phải
        double adjustTop = 0;        // dịch lên/xuống
                                     // -----------------------------------

        // 1. Chiều rộng logic của mỗi cột
        double baseColW = ProgressChart.Width / n;

        // 2. Chiều rộng thật khi có gap
        double totalColW = baseColW + columnGap;

        // 3. Kích thước overlay
        double overlayW = baseColW * widthScale;

        int index = Math.Clamp(_currentIndex, 0, n - 1);

        // 4. LEFT đầu cột index (bỏ cách tính sai cũ)
        double colLeft = index * totalColW;

        // 5. canh overlay vào giữa khối baseColW
        double centerOffset = (baseColW - overlayW) / 2.0;

        double finalX = colLeft + centerOffset + adjustLeft;
        double finalY = adjustTop;

        // Apply
        SelectionOverlay.IsVisible = true;
        SelectionOverlay.WidthRequest = overlayW;
        SelectionOverlay.HeightRequest = ProgressChart.Height;
        SelectionOverlay.TranslationX = finalX;
        SelectionOverlay.TranslationY = finalY;
    }

    private void Prev_Clicked(object sender, EventArgs e) => SelectIndex(_currentIndex - 1);
    private void Next_Clicked(object sender, EventArgs e) => SelectIndex(_currentIndex + 1);

    private void DisplayProgress(UserProgressModel p)
    {
        if (p == null)
        {
            LblWeight.Text = "Weight: --";
            LblBodyFat.Text = "Body Fat: --";
            LblMuscleMass.Text = "Muscle Mass: --";
            LblNote.Text = "";
            return;
        }

        LblWeight.Text = $"Weight: {p.Weight} kg";
        LblBodyFat.Text = $"Body Fat: {p.BodyFat}%";
        LblMuscleMass.Text = $"Muscle Mass: {p.MuscleMass}%";
        LblNote.Text = p.Note;
    }

    private void PrevWeek_Clicked(object sender, EventArgs e)
    {
        _currentWeekStart = _currentWeekStart.AddDays(-7);
        _currentWeekEnd = _currentWeekEnd.AddDays(-7);
        LoadWeekData();
    }

    private void NextWeek_Clicked(object sender, EventArgs e)
    {
        _currentWeekStart = _currentWeekStart.AddDays(7);
        _currentWeekEnd = _currentWeekEnd.AddDays(7);
        LoadWeekData();
    }

    private void Chart_Tapped(object sender, TappedEventArgs e)
    {
        if (_chartData == null || _chartData.Count == 0)
            return;

        var pt = e.GetPosition(ProgressChart);
        if (pt == null) return;

        double tapX = pt.Value.X;
        int n = _chartData.Count;

        double colW = ProgressChart.Width / n;

        int index = (int)Math.Floor(tapX / colW);
        index = Math.Clamp(index, 0, n - 1);

        SelectIndex(index);
        UpdateSelectionOverlayPosition();
    }

    private double? CalcBMI(UserProgressModel p)
    {
        if (p.Weight is null || p.Height is null || p.Height == 0)
            return null;

        double h = (double)p.Height / 100.0;
        return Math.Round((double)p.Weight / (h * h), 2);
    }

    private string GetBMIDesc(double? bmi)
    {
        if (bmi == null) return "--";

        if (bmi < 18.5) return "Thiếu cân";
        if (bmi < 25) return "Cân đối";
        if (bmi < 30) return "Thừa cân";
        return "Béo phì";
    }

    private double? CalcWHR(UserProgressModel p)
    {
        if (p.Waist is null || p.Hip is null || p.Hip == 0)
            return null;

        return Math.Round((double)p.Waist / (double)p.Hip, 2);
    }

    private string GetWHRDesc(double? whr, string gender)
    {
        if (whr == null || gender == null) return "--";

        bool male = gender.ToLower() == "male";

        if (male)
        {
            if (whr < 0.90) return "Tốt";
            if (whr < 0.99) return "Nguy cơ vừa";
            return "Nguy cơ cao";
        }
        else
        {
            if (whr < 0.80) return "Tốt";
            if (whr < 0.84) return "Nguy cơ vừa";
            return "Nguy cơ cao";
        }
    }

    private double? CalcTBW(UserProgressModel p)
    {
        if (!_userLoaded || p.Weight is null || _userProfile?.Gender == null)
            return null;

        double w = (double)p.Weight;

        return _userProfile.Gender.ToLower() switch
        {
            "male" => Math.Round(0.60 * w, 2),
            "female" => Math.Round(0.50 * w, 2),
            _ => null
        };
    }

    private string GetTBWDesc(double? tbw)
    {
        if (tbw == null) return "--";

        if (tbw < 30) return "Thiếu nước";
        if (tbw < 45) return "Ổn định";
        return "Nhiều nước";
    }

    private double? CalcTDEE(UserProgressModel p)
    {
        if (!_userLoaded || _userProfile?.Age is null || p.Weight is null || p.Height is null)
            return null;

        double age = _userProfile.Age.Value;
        double w = (double)p.Weight;
        double h = (double)p.Height;
        double genderFactor = _userProfile.Gender?.ToLower() == "male" ? 5 : -161;

        // Mifflin-St Jeor
        double bmr = 10 * w + 6.25 * h - 5 * age + genderFactor;

        double tdee = bmr * 1.55; // hoạt động trung bình
        return Math.Round(tdee, 0);
    }

    private void ShowExplain(string title, string content)
    {
        FullExplainTitle.Text = title;
        FullExplainContent.Text = content;

        ExplainModal.IsVisible = true;
    }

    private void OnCloseExplain(object sender, EventArgs e)
    {
        ExplainModal.IsVisible = false;
    }


    private void OnBMIFrameTapped(object sender, TappedEventArgs e)
    {
        ShowExplain(
            "BMI — Body Mass Index (Chỉ số khối cơ thể)",
            "BMI là chỉ số cơ bản đánh giá mức độ gầy – bình thường – thừa cân.\n\n" +
            "📌 Công thức:\n" +
            "BMI = Cân nặng (kg) / (Chiều cao (m))²\n\n" +
            "🔹 **Phân loại theo WHO**:\n" +
            "• < 18.5 → Thiếu cân\n" +
            "• 18.5 – 24.9 → Bình thường\n" +
            "• 25 – 29.9 → Thừa cân\n" +
            "• ≥ 30 → Béo phì (chia thêm 3 cấp độ)\n\n" +
            "⚠️ **BMI không chính xác với**:\n" +
            "• Người tập gym nhiều cơ.\n" +
            "• Người có xương to.\n" +
            "→ Vì BMI không phân biệt mỡ và cơ.\n\n" +
            "🔸 Dùng BMI để có cái nhìn tổng quan, kết hợp thêm WHR và bodyfat để chính xác hơn."
        );
    }
    private void OnWHRFrameTapped(object sender, TappedEventArgs e)
    {
        ShowExplain(
            "WHR — Waist Hip Ratio (Tỷ lệ eo / mông)",
            "WHR là chỉ số đánh giá phân bố mỡ, đặc biệt là **mỡ bụng nội tạng**.\n\n" +
            "📌 Công thức:\n" +
            "WHR = Vòng eo / Vòng mông\n\n" +
            "🔹 **Ngưỡng đánh giá**:\n" +
            "• Nam:\n" +
            "  - < 0.90 → Tốt\n" +
            "  - 0.90 – 0.99 → Cảnh báo\n" +
            "  - ≥ 1.00 → Nguy cơ tim mạch cao\n\n" +
            "• Nữ:\n" +
            "  - < 0.80 → Tốt\n" +
            "  - 0.80 – 0.84 → Cảnh báo\n" +
            "  - ≥ 0.85 → Nguy cơ cao\n\n" +
            "🔸 **WHR cao cho thấy**:\n" +
            "• Tích mỡ nội tạng.\n" +
            "• Nguy cơ: tim mạch, tiểu đường, cao huyết áp.\n\n" +
            "🔹 **Giảm WHR**:\n" +
            "• Tập cardio + tập cơ bụng sâu (plank, dead bug).\n" +
            "• Ăn ít đường, tinh bột xấu.\n" +
            "• Duy trì deficit calo hợp lý.\n"
        );
    }
    private void OnTDEEFrameTapped(object sender, TappedEventArgs e)
    {
        ShowExplain(
            "TDEE — Tổng năng lượng tiêu hao hằng ngày",
            "TDEE (Total Daily Energy Expenditure) là lượng calo cơ thể đốt trong 24h, bao gồm:\n\n" +
            "1️⃣ **BMR** – Năng lượng nền (60–70%)\n" +
            "2️⃣ **TEF** – Năng lượng tiêu hóa thức ăn (10%)\n" +
            "3️⃣ **NEAT** – Vận động tự nhiên: đi lại, đứng, cầm đồ (15%)\n" +
            "4️⃣ **Exercise** – Tập luyện (0–15%)\n\n" +
            "📌 Công thức chung:\n" +
            "TDEE = BMR × hệ số hoạt động\n\n" +
            "🔹 Hệ số hoạt động:\n" +
            "• Ít vận động: ×1.2\n" +
            "• Tập nhẹ 1–3 buổi/tuần: ×1.375\n" +
            "• Tập trung bình 3–5 buổi/tuần: ×1.55\n" +
            "• Tập nặng 6 buổi/tuần: ×1.725\n\n" +
            "🎯 **Mục tiêu giảm cân**:\n" +
            "• Ăn ít hơn TDEE **300–500 kcal/ngày** → giảm 0.3–0.6kg/tuần.\n\n" +
            "🎯 **Tăng cơ**:\n" +
            "• Ăn thừa **250–400 kcal/ngày**, ưu tiên protein.\n\n" +
            "TDEE giúp bạn kiểm soát quá trình giảm cân hoặc tăng cơ chính xác và bền vững."
        );
    }
    private void OnTBWFrameTapped(object sender, TappedEventArgs e)
    {
        ShowExplain(
            "TBW — Tổng lượng nước trong cơ thể",
            "TBW (Total Body Water) là tổng lượng nước chiếm trong cơ thể, thường nằm ở 2 dạng:\n\n" +
            "• **Nước nội bào (ICW)** – khoảng 2/3 tổng lượng nước.\n" +
            "• **Nước ngoại bào (ECW)** – khoảng 1/3.\n\n" +
            "🔹 **Tỷ lệ nước lý tưởng**:\n" +
            "• Nam giới: khoảng **55–65% trọng lượng cơ thể**.\n" +
            "• Nữ giới: khoảng **45–60% trọng lượng cơ thể** (do tỷ lệ mỡ cao hơn).\n\n" +
            "🔹 **TBW thấp có thể do**:\n" +
            "• Uống ít nước.\n" +
            "• Mất nước do tập luyện, thời tiết nóng.\n" +
            "• Ăn quá mặn.\n" +
            "• Cơ thể giữ nước không tốt.\n\n" +
            "🔹 **Dấu hiệu thiếu nước**:\n" +
            "• Mệt mỏi, khó tập trung.\n" +
            "• Nước tiểu vàng sậm.\n" +
            "• Khô môi, da khô.\n\n" +
            "🔹 **Gợi ý**:\n" +
            "Hãy uống **30–35ml nước × cân nặng** mỗi ngày, và bổ sung thêm khi tập luyện."
        );
    }

}

// Models
public class UserProgressModel
{
    public int Id { get; set; }
    public int UserId { get; set; }

    public decimal? Weight { get; set; }
    public decimal? BodyFat { get; set; }
    public decimal? MuscleMass { get; set; }

    public decimal? Height { get; set; }
    public decimal? Waist { get; set; }
    public decimal? Hip { get; set; }
    public decimal? Chest { get; set; }

    public string? Note { get; set; }
    public DateTime CreatedAt { get; set; }
}


public class ProgressChartData
{
    public string Date { get; set; } = string.Empty;       // label X (dd/MM)
    public DateTime ColumnDate { get; set; }               // ngày thực của cột
    public double Muscle { get; set; }
    public double Fat { get; set; }
    public double Remaining { get; set; }
    public UserProgressModel? SourceProgress { get; set; } // dữ liệu dùng để hiển thị (có thể copy từ ngày khác)
    public bool IsOriginal { get; set; }                   // có dữ liệu nguyên gốc cho ngày đó hay không
}
