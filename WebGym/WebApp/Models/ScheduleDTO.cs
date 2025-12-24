// WebApp/Models/ScheduleDTO.cs
namespace WebApp.Models
{
    public class ScheduleDTO
    {
        public int Id { get; set; }
        public int ClassId { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}

// WebApp/Models/ClassWithSchedulesDTO.cs
namespace WebApp.Models
{
    public class ClassWithSchedulesDTO
    {
        public ClassDTO Class { get; set; } = new();
        public List<ScheduleDTO> Schedules { get; set; } = new();
    }
}
