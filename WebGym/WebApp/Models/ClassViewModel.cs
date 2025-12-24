using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class ClassViewModel
    {
        public int Id { get; set; }

        [Required]
        [Display(Name = "Tên lớp")]
        public string ClassName { get; set; } = string.Empty;

        [Required]
        [Display(Name = "Số lượng tối đa")]
        public int MaxParticipants { get; set; }

        // Dùng khi tạo / sửa
        [Display(Name = "Phòng học")]
        public String RoomName { get; set; }

        [Display(Name = "PT phụ trách")]
        public int? PTUserId { get; set; }

        // Dùng khi hiển thị danh sách (ClassList)
        public string? RoomId { get; set; }

        public string? PTName { get; set; }
    }
}
