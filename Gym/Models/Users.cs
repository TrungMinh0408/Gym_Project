using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class Users
    {
        public int? Id { get; set; }
        public string? Name { get; set; } = string.Empty;
        public int? Age { get; set; }
        public string? Gender { get; set; }
        public string? Email { get; set; } = string.Empty;
        public string? Password { get; set; }
        public string? Role { get; set; } = string.Empty;
        public DateTime CreatedAt { get; set; }
    }
}
