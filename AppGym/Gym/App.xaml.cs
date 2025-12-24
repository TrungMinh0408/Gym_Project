namespace Gym
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();
            Task.Run(async () => await AppConfig.InitializeAsync());
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            return new Window(new NavigationPage(new LoginPage()));
        }
    }
}