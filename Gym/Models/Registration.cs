using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class Registration
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public int? ClassId { get; set; }
        public int? PlanId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Status { get; set; } = string.Empty;
        public MembershipPlan? Plan { get; set; } 
        public Users? User { get; set; }
        public Class? Class { get; set; }

    }
}

