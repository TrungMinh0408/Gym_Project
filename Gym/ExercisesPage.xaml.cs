using Gym.Models;
using Gym.Resources.Images;
namespace Gym;

public partial class ExercisesPage : ContentPage
{
    public ExercisesPage()
    {
        InitializeComponent();

        PoseList.ItemsSource = ExerciseService.GetExercises();
        VideoList.ItemsSource = ExerciseService.GetVideos();
    }

    private void OnPoseTabClicked(object sender, EventArgs e)
    {
        TabPose.BackgroundColor = Color.FromArgb("#E0E0E0");
        TabVideo.BackgroundColor = Colors.Transparent;

        PoseList.IsVisible = true;
        VideoList.IsVisible = false;
    }

    private void OnVideoTabClicked(object sender, EventArgs e)
    {
        TabPose.BackgroundColor = Colors.Transparent;
        TabVideo.BackgroundColor = Color.FromArgb("#E0E0E0");

        PoseList.IsVisible = false;
        VideoList.IsVisible = true;
    }

    private async void OnPoseSelected(object sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is Exercise ex)
        {
            // Reset selection để có thể chọn lại cùng item sau khi back
            PoseList.SelectedItem = null;

            await Navigation.PushAsync(new MainPage_Onnx(ex, null));
        }
    }

    private async void OnVideoSelected(object sender, SelectionChangedEventArgs e)
    {
        if (e.CurrentSelection.FirstOrDefault() is VideoExercise v)
        {
            // Reset selection để có thể chọn lại cùng item sau khi back
            VideoList.SelectedItem = null;

            await Navigation.PushAsync(new MainPage_Onnx(null, v));
        }
    }

}
