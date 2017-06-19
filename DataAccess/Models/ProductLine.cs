using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class ProductLine
    {
        public ProductLine()
        {
            this.Parts = new List<Part>();
        }

        public int ProductLineID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public virtual ICollection<Part> Parts { get; set; }
    }
}
