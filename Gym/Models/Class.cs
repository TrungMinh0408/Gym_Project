using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class Class
    {
        public int Id { get; set; }
        public string ClassName { get; set; } = string.Empty;
        public int? PTUserId { get; set; }
        public int? RoomId { get; set; }
        public int MaxParticipants { get; set; }

        public Users? PT { get; set; }
        //public Room? Room { get; set; }
    }

    //public class Room
    //{
    //    public int Id { get; set; }
    //    public string RoomName { get; set; } = string.Empty;
    //}
}

