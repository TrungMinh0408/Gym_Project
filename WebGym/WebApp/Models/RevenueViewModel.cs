using System;
using System.Collections.Generic;

namespace WebApp.Models
{
    public class DailyRevenueViewModel
    {
        public DateTime Date { get; set; }
        public int Count { get; set; }          // số giao dịch
        public decimal Amount { get; set; }     // tổng tiền trong ngày
    }

    public class RevenueViewModel
    {
        public decimal TotalRevenue { get; set; }        // tổng tất cả
        public decimal RevenueToday { get; set; }        // hôm nay
        public decimal RevenueThisMonth { get; set; }   // tháng này

        public List<DailyRevenueViewModel> DailyRevenues { get; set; }
            = new List<DailyRevenueViewModel>();
    }
}
