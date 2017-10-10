using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CenDek.Models.Parts
{
    public class ListPTable
    {
        public int PartID { get; set; }
        public int CurrencyID { get; set; }
        public string CurrencyName { get; set; }
        public string PartNo { get; set; }
        public string Description { get; set; }
        public string CategoryName { get; set; }
        public string CustomerName { get; set; }
        public decimal Cost { get; set; }
        public decimal Sell { get; set; }
        public DateTime ValidStart { get; set; }
        public DateTime ValidEnd { get; set; }
        public DateTime DateCreated { get; set; }

    }
}