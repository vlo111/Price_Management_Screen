using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class ProductLine
    {
        public ProductLine()
        {
            this.OrderParts = new List<OrderPart>();
        }

        public int ProductLineID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public virtual ICollection<OrderPart> OrderParts { get; set; }
    }
}
