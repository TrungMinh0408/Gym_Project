namespace BackendAPI.Models
{
    public class ClassCreateDto
    {
        public string ClassName { get; set; } = string.Empty;
        public int MaxParticipants { get; set; }
        public int? PTUserId { get; set; }
        public int? RoomId { get; set; }
    }

}
