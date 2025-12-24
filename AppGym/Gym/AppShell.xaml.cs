using Microsoft.Maui.Controls;
using Microsoft.Maui.Graphics;

namespace Gym;

public partial class AppShell : Shell
{
    public AppShell()
    {
        InitializeComponent();

        // Đăng ký routes để Shell navigation theo tên hoạt động
        Routing.RegisterRoute(nameof(TrainerProgressPage), typeof(TrainerProgressPage));
        Routing.RegisterRoute(nameof(ProgressPage), typeof(ProgressPage));
        Routing.RegisterRoute(nameof(UserProgressPage), typeof(UserProgressPage));
        Routing.RegisterRoute(nameof(AddProgressPage), typeof(AddProgressPage));
        Routing.RegisterRoute(nameof(ProgressEntryPage), typeof(ProgressEntryPage));

        Shell.SetTabBarBackgroundColor(this, Colors.White);
        Shell.SetTabBarForegroundColor(this, Colors.Blue);
        Shell.SetTabBarTitleColor(this, Colors.Blue);
        Shell.SetTabBarUnselectedColor(this, Colors.LightGray);
    }
}