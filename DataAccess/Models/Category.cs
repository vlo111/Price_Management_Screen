using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class Category
    {
        public Category()
        {
            this.Parts = new List<Part>();
        }

        public int CategoryID { get; set; }
        public string Name { get; set; }
        public int CategoryParentID { get; set; }
        public virtual ICollection<Part> Parts { get; set; }
    }
}
