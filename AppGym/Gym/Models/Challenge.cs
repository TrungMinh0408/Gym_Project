using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class Challenge
    {
        public int Id { get; set; }
        public string? Title { get; set; }
        public string? Description { get; set; }
        public int RewardPoints { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        // 👇 trạng thái UI
        public bool IsJoined { get; set; }

        // 👇 dùng trực tiếp cho XAML
        public bool ShowJoinButton => !IsJoined;
        public bool ShowProgressButton => IsJoined;
    }
}

