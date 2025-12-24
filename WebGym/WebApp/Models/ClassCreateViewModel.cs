using System.ComponentModel.DataAnnotations;

namespace WebApp.Models
{
    public class ClassCreateViewModel
    {
        [Required]
        public string ClassName { get; set; } = string.Empty;

        [Required]
        public int MaxParticipants { get; set; }

        public int? RoomId { get; set; }      // ✅ ĐÚNG KIỂU
        public int? PTUserId { get; set; }
    }

}
