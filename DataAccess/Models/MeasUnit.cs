using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class MeasUnit
    {
        public MeasUnit()
        {
            this.Parts = new List<Part>();
        }

        public int MeasUnitID { get; set; }
        public string ShortDescription { get; set; }
        public string LongDescription { get; set; }
        public virtual ICollection<Part> Parts { get; set; }
    }
}
