using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class LeaderboardItem
    {
        public int UserId { get; set; }
        public string? UserName { get; set; }
        public int Points { get; set; }

        public int Rank { get; set; }

    }
}

