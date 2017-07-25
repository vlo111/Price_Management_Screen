using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class WeightMeasurement
    {
        public WeightMeasurement()
        {
            this.Parts = new List<Part>();
        }

        public int WeightMeasurementID { get; set; }
        public string Name { get; set; }
        public virtual ICollection<Part> Parts { get; set; }
    }
}
