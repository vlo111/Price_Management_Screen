using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class AltPart
    {
        public int AltPartID { get; set; }
        public int PartID { get; set; }
        public string PartNo { get; set; }
        public virtual Part Part { get; set; }
    }
}
