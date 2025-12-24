using System;
using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class Schedule
    {
        public int Id { get; set; }

        [Display(Name = "Mã lớp (ClassId)")]
        public int? ClassId { get; set; }   // nullable cho 1-1

        [Required]
        [Display(Name = "Giờ bắt đầu")]
        public DateTime StartTime { get; set; }

        [Required]
        [Display(Name = "Giờ kết thúc")]
        public DateTime EndTime { get; set; }
    }
}
