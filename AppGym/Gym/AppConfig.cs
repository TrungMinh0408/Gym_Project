using System.Text.Json;
using System.Net.NetworkInformation;

public static class AppConfig
{
    private static Dictionary<string, string>? _settings;

    public static async Task InitializeAsync()
    {
        if (_settings != null) return;

        try
        {
            using var stream = await FileSystem.OpenAppPackageFileAsync("appsettings.json");
            using var reader = new StreamReader(stream);
            var json = await reader.ReadToEndAsync();

            _settings = JsonSerializer.Deserialize<Dictionary<string, string>>(json)
                        ?? new Dictionary<string, string>();

            // Tự động chọn Base URL theo platform
#if WINDOWS
            _settings["ApiBaseUrl"] = "http://localhost:5180";
#elif ANDROID
            //if (IsEmulator())
            //{
            //    _settings["ApiBaseUrl"] = "http://10.0.2.2:5180"; // Android Emulator
            //}
            //else
            //{
                _settings["ApiBaseUrl"] = "http://192.168.2.6:5180"; // Real Device
            //}
#endif
        }
        catch (Exception ex)
        {
            // Nếu load thất bại, gán mặc định localhost
            _settings = new Dictionary<string, string>
            {
                ["ApiBaseUrl"] = "http://localhost:5180"
            };
            System.Diagnostics.Debug.WriteLine("AppConfig load failed: " + ex.Message);
        }
    }

    public static string? Get(string key)
        => _settings != null && _settings.TryGetValue(key, out var v) ? v : null;

#if ANDROID
    // Kiểm tra xem app đang chạy trên emulator hay real device
    private static bool IsEmulator()
    {
        string fingerprint = Android.OS.Build.Fingerprint ?? "";
        string model = Android.OS.Build.Model ?? "";
        string product = Android.OS.Build.Product ?? "";

        return fingerprint.Contains("generic")
            || fingerprint.Contains("emulator")
            || model.Contains("Emulator")
            || product.Contains("sdk_gphone");
    }
#endif
}
