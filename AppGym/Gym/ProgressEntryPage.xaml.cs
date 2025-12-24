using Microsoft.Maui.Controls;
using Microsoft.Maui.Storage;

namespace Gym;

public partial class ProgressEntryPage : ContentPage
{
    private bool _navigated = false;

    public ProgressEntryPage()
    {
        InitializeComponent();
    }

    protected override async void OnAppearing()
    {
        base.OnAppearing();

        if (_navigated) return;
        _navigated = true;

        // Lấy role đúng key mà LoginPage lưu
        var role = Preferences.Get("UserRole", string.Empty);

        // Nếu trainer -> mở TrainerProgressPage, ngược lại mở ProgressPage
        if (!string.IsNullOrEmpty(role) &&
            (role.Equals("PT", System.StringComparison.OrdinalIgnoreCase) ||
             role.Equals("Trainer", System.StringComparison.OrdinalIgnoreCase)))
        {
            // dùng PushAsync để chắc chắn hoạt động trong Shell
            await Navigation.PushAsync(new TrainerProgressPage());
        }
        else
        {
            await Navigation.PushAsync(new ProgressPage());
        }
    }
}