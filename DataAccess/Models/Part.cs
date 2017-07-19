using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class Part
    {
        public Part()
        {
            this.AltPartIDs = new List<AltPartID>();
            this.OrderParts = new List<OrderPart>();
            this.PartDependencies = new List<PartDependency>();
            this.PartInventories = new List<PartInventory>();
            this.Prices = new List<Price>();
            this.Files = new List<File>();
        }

        public int PartID { get; set; }
        public Nullable<int> AltPartID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public int CategoryID { get; set; }
        public Nullable<int> ImageID { get; set; }
        public Nullable<int> PartStatusID { get; set; }
        public bool CustomFlag { get; set; }
        public string Comments { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.DateTime ModifiedDate { get; set; }
        public int EmployeeID { get; set; }
        public Nullable<int> WeightMeasurementID { get; set; }
        public double Weight { get; set; }
        public Nullable<double> Height { get; set; }
        public Nullable<double> Width { get; set; }
        public Nullable<double> Length { get; set; }
        public int PriceID { get; set; }
        public int MeasUnitID { get; set; }
        public Nullable<int> PartInventoryID { get; set; }
        public virtual ICollection<AltPartID> AltPartIDs { get; set; }
        public virtual Category Category { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual Image Image { get; set; }
        public virtual MeasUnit MeasUnit { get; set; }
        public virtual ICollection<OrderPart> OrderParts { get; set; }
        public virtual PartStatu PartStatu { get; set; }
        public virtual WeightMeasurement WeightMeasurement { get; set; }
        public virtual ICollection<PartDependency> PartDependencies { get; set; }
        public virtual ICollection<PartInventory> PartInventories { get; set; }
        public virtual ICollection<Price> Prices { get; set; }
        public virtual ICollection<File> Files { get; set; }
    }
}
