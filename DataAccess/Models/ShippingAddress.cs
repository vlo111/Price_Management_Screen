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
        public System.DateTime LastUsed { get; set; }
        [DisplayName("First Name")]
        public string ContactFirstName { get; set; }
        [DisplayName("Last Name")]
        public string ContactLastName { get; set; }
        [DisplayName("Cell")]
        public string CellNo { get; set; }
        [DisplayName("Phone")]
        public string PhoneNo { get; set; }
        [DisplayName("Address")]
        public string Address1 { get; set; }
        [DisplayName("Address cont.")]
        public string Address2 { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        [DisplayName("Postal Code")]
        public string PostalCode { get; set; }
        public string Comments { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual ICollection<Shipment> Shipments { get; set; }
    }
}
