using System;
using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class UserProgressHistoryViewModel
    {
        public int Id { get; set; }

        // =============================
        //  USER
        // =============================
        [Required]
        public int UserId { get; set; }

        [Display(Name = "Người dùng")]
        public string? UserName { get; set; }

        // =============================
        //  PT Trainer
        // =============================
        [Display(Name = "PT phụ trách")]
        public int? PTUserId { get; set; }

        [Display(Name = "Tên PT")]
        public string? PTName { get; set; }

        // =============================
        //  Schedule
        // =============================
        public int? ScheduleId { get; set; }

        [Display(Name = "Buổi tập / Lịch tập")]
        public string? ScheduleName { get; set; }

        // =============================
        //  Body Info
        // =============================
        [Display(Name = "Cân nặng (kg)")]
        public double? Weight { get; set; }

        [Display(Name = "% mỡ")]
        public double? BodyFat { get; set; }

        [Display(Name = "Khối cơ (kg)")]
        public double? MuscleMass { get; set; }

        [Display(Name = "Chiều cao (cm)")]
        public double? Height { get; set; }

        [Display(Name = "Vòng eo (cm)")]
        public double? Waist { get; set; }

        [Display(Name = "Vòng hông (cm)")]
        public double? Hip { get; set; }

        [Display(Name = "Vòng ngực (cm)")]
        public double? Chest { get; set; }

        // =============================
        //  Misc
        // =============================
        [Display(Name = "Ghi chú")]
        public string? Note { get; set; }

        [Display(Name = "Ngày tạo")]
        public DateTime CreatedAt { get; set; }
    }
}
