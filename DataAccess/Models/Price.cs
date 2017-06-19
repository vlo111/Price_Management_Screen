using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class Price
    {
        public int PriceID { get; set; }
        public int PartID { get; set; }
        public System.DateTime ValidStart { get; set; }
        public System.DateTime ValidEnd { get; set; }
        public System.DateTime DateCreated { get; set; }
        public decimal CostValue { get; set; }
        public int CostCurrencyID { get; set; }
        public decimal SellValue { get; set; }
        public int SellCurrencyID { get; set; }
        public int EmployeeID { get; set; }
        public virtual Currency Currency { get; set; }
        public virtual Currency Currency1 { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual Part Part { get; set; }
    }
}
