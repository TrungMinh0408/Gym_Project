using Microsoft.AspNetCore.Mvc.Rendering;
using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class ScheduleCalendarViewModel
    {
        public int? UserId { get; set; }
        public string? UserName { get; set; }

        [Display(Name = "Tuần bắt đầu từ")]
        public DateTime WeekStart { get; set; }

        public DateTime WeekEnd => WeekStart.AddDays(6);

        public List<UserScheduleDto> Schedules { get; set; } = new();

        public List<SelectListItem> Users { get; set; } = new(); // Dropdown
    }
}
