using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Models
{
    public class CustomPart
    {
        public CustomPart()
        {
            this.Files = new List<File>();
        }
        public int PartId { get; set; }
        public string PartNo { get; set; }
        public string Name { get; set; }
        public string Comment { get; set; }

        public double Weight { get; set; }
        public int WeightUnit { get; set; }
        public double Quantity { get; set; }
        public int QuantityUnit { get; set; }
        public double Price { get; set; }
        public int PriceUnit { get; set; }
        public virtual ICollection<File> Files { get; set; }
    }
}
