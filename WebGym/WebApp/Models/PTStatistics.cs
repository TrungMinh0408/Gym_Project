namespace WebApp.Models
{
    public class PTStatistics
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Specialty { get; set; } = "";
        public int ExperienceYears { get; set; }
    }
}
