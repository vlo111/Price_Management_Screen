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
        
        [DisplayName("Address 1")]
        [Required(ErrorMessage = "Address 1 is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Address1 { get; set; }

        [DisplayName("Address 2")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Address2 { get; set; }

        [Required(ErrorMessage = "City is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string City { get; set; }

        [Required(ErrorMessage = "Province is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Province { get; set; }

        [Required(ErrorMessage = "Country is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Country { get; set; }

        [DisplayName("Postal Code")]
        [Required(ErrorMessage = "Postal code is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string PostalCode { get; set; }

        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Comments { get; set; }

        public virtual Customer Customer { get; set; }
        public virtual ICollection<Shipment> Shipments { get; set; }
    }
}
