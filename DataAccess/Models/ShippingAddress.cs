using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public partial class ShippingAddress
    {
        public ShippingAddress()
        {
            this.Shipments = new List<Shipment>();
        }

        public int ShippingAddressID { get; set; }
        public int CustomerID { get; set; }
        public int CustomerContactID { get; set; }
        public System.DateTime LastUsed { get; set; }
        
        [Required]
        [DisplayName("Address 1")]
        public string Address1 { get; set; }
        [DisplayName("Address 2")]
        public string Address2 { get; set; }
        [Required]
        public string City { get; set; }
        [Required]
        public string Province { get; set; }
        [Required]
        public string Country { get; set; }
        [Required]
        public string PostalCode { get; set; }
        public string Comments { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual CustomerContact CustomerContact { get; set; }
        public virtual ICollection<Shipment> Shipments { get; set; }
    }
}
