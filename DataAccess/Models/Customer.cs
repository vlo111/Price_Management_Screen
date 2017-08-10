using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public partial class Customer
    {
        public Customer()
        {
            this.CustomerCarriers = new List<CustomerCarrier>();
            this.CustomerContacts = new List<CustomerContact>();
            this.CustOrders = new List<CustOrder>();
            this.ShippingAddresses = new List<ShippingAddress>();
        }

        public int CustomerID { get; set; }

        [Required(ErrorMessage = "Company is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Company { get; set; }

        [DisplayName("Phone")]
        [Required(ErrorMessage = "Phone is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string PhoneNo { get; set; }

        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Fax { get; set; }
        
        [DisplayName("Address 1")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Address1 { get; set; }

        [DisplayName("Address 2")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Address2 { get; set; }

        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string City { get; set; }

        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Province { get; set; }

        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Country { get; set; }

        [DisplayName("Postal Code")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string PostalCode { get; set; }

        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Comments { get; set; }
        
        // Hidden fields.
        public int EmployeeID { get; set; }
        public bool GSTExempt { get; set; }
        public bool PSTExempt { get; set; }
        public System.DateTime Created { get; set; }
        public Nullable<System.DateTime> Modified { get; set; }

        public virtual ICollection<CustomerCarrier> CustomerCarriers { get; set; }
        public virtual ICollection<CustomerContact> CustomerContacts { get; set; }
        public virtual ICollection<CustOrder> CustOrders { get; set; }
        public virtual ICollection<ShippingAddress> ShippingAddresses { get; set; }
    }
}
