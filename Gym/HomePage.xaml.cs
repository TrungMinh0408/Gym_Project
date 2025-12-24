using Gym.Pages;

namespace Gym;

public partial class HomePage : ContentPage
{
    public HomePage()
    {
        InitializeComponent();
    }

    private async void OnGetStartedClicked(object sender, EventArgs e)
    {
        //await DisplayAlert("Workout", "Let's get started!", "OK");
        // hoặc chuyển sang trang khác:
        await Navigation.PushAsync(new ExercisesPage());
    }

    private async void ViewClasses_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ClassesPage());
    }

    private async void ViewMembershipPlan_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new MembershipPlansPage());
    }
    private async void ViewPosts_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new PostListPage());
    }

    private async void ViewChallenges_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ChallengePage());
    }
}
