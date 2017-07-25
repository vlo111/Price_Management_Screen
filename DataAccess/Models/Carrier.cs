using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public partial class Carrier
    {
        public Carrier()
        {
            this.CustomerCarriers = new List<CustomerCarrier>();
            this.Shipments = new List<Shipment>();
        }

        public int CarrierID { get; set; }
        public string CarrierName { get; set; }
        public string Phone { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }

        [DisplayName("Address")]
        public string Address1 { get; set; }
        [DisplayName("Address cont.")]
        public string Address2 { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public string Country { get; set; }
        [DisplayName("Postal Code")]
        public string PostalCode { get; set; }
        public string Comments { get; set; }
        public virtual ICollection<Shipment> Shipments { get; set; }
        public virtual ICollection<CustomerCarrier> CustomerCarriers { get; set; }
    }
}
