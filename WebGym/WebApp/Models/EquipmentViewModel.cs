using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class EquipmentViewModel
    {
        public int Id { get; set; }

        [Required]
        [Display(Name = "Tên thiết bị")]
        public string EquipmentName { get; set; } = string.Empty;

        [Required]
        [Display(Name = "Số lượng")]
        public int Quantity { get; set; }

        [Display(Name = "Tình trạng")]
        public string? ConditionStatus { get; set; }

        [Display(Name = "Phòng tập")]
        public int? RoomId { get; set; }

        // chỉ dùng HIỂN THỊ
        public string? RoomName { get; set; }
    }
}
