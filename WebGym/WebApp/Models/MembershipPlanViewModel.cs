using System;
using Newtonsoft.Json;

namespace WebApp.Models
{
    public class MembershipPlanViewModel
    {
        public int Id { get; set; }
        public string PlanName { get; set; }
        public int DurationMonths { get; set; }
        public decimal Price { get; set; }
        public string Description { get; set; }
        public DateTime? CreatedAt { get; set; }
    }
}
