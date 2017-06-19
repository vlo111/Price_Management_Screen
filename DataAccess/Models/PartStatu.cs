using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class PartStatu
    {
        public PartStatu()
        {
            this.Parts = new List<Part>();
        }

        public int PartStatusID { get; set; }
        public string Status { get; set; }
        public virtual ICollection<Part> Parts { get; set; }
    }
}
