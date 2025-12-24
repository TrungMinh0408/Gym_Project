using System;

namespace BackendAPI.DTOs
{
    public class ClassScheduleDTO
    {
        public int ClassId { get; set; }
        public string ClassName { get; set; } = "";

        public int RoomId { get; set; }
        public string RoomName { get; set; } = "";

        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
    }
}
