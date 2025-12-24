using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Gym.Models
{
    public class MembershipPlan
    {
        public int Id { get; set; }
        public string PlanName { get; set; } = string.Empty;
        public int DurationMonths { get; set; }
        public decimal Price { get; set; }
        public string? Description { get; set; }
    }
}
public class MembershipPlan
{
    public int Id { get; set; }
    public string PlanName { get; set; } = string.Empty;
    public int DurationMonths { get; set; }
    public decimal Price { get; set; }
    public string Description { get; set; } = string.Empty;
}
