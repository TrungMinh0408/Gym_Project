using System;
using System.Collections.Generic;

namespace WebApp.Models
{
    public class TransactionViewModel
    {
        public int Id { get; set; }
        public int PaymentId { get; set; }
        public string UserName { get; set; }
        public string PlanName { get; set; }
        public decimal Amount { get; set; }
        public DateTime PaymentDate { get; set; }
        public string TransactionType { get; set; }
        public DateTime CreatedAt { get; set; }
    }

    public class TransactionListViewModel
    {
        public DateTime? From { get; set; }
        public DateTime? To { get; set; }
        public decimal TotalAmount { get; set; }
        public int TotalCount { get; set; }

        public List<TransactionViewModel> Items { get; set; }
            = new List<TransactionViewModel>();
    }
}
