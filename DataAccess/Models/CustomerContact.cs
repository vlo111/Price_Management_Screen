using System;
using System.Collections.Generic;

namespace DataAccess.Models
{
    public partial class CustomerContact
    {
        public CustomerContact()
        {
            this.ShippingAddresses = new List<ShippingAddress>();
        }

        public int CustomerContactID { get; set; }
        public int CustomerID { get; set; }
        public string First { get; set; }
        public string Last { get; set; }
        public string JobTitle { get; set; }
        public string Notes { get; set; }
        public virtual Customer Customer { get; set; }
        public virtual ICollection<ShippingAddress> ShippingAddresses { get; set; }
    }
}
