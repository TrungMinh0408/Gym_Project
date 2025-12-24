namespace WebApp.Models
{
    public class ClassDTO
    {
        public int Id { get; set; }
        public string ClassName { get; set; } = string.Empty;

        // PT chính của lớp (User.Id có Role = "Trainer")
        public int? PTUserId { get; set; }

        // Phòng học (Rooms.Id)
        public int? RoomId { get; set; }

        public int? MaxParticipants { get; set; }
    }
}
