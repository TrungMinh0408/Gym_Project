namespace WebApp.Models
{
    public class User
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
        public DateTime CreatedAt { get; set; }
    }
    public class UserStatistics
    {
        public int TotalUsers { get; set; }
        public int Admins { get; set; }
        public int Trainers { get; set; }
        public int Customers { get; set; }
    }
}
