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
            this.CustOrders = new List<CustOrder>();
        }

        public int CustomerID { get; set; }

        [Required(ErrorMessage = "Company is required")]
        public string Company { get; set; }

        [DisplayName("Phone")]
        public string PhoneNo { get; set; }

        public string Fax { get; set; }

        [DisplayName("Address 1")]
        public string Address1 { get; set; }

        [DisplayName("Address 2")]
        public string Address2 { get; set; }

        public string City { get; set; }

        public string Province { get; set; }

        public string Country { get; set; }

        [DisplayName("Postal Code")]
        public string PostalCode { get; set; }

        public string Comments { get; set; }

        //[Range(0, 100, ErrorMessage = "Please enter a whole number between 0 and 100.")]
        [RegularExpression("^[0-9]+$", ErrorMessage = "Please enter a whole number between 0 and 100.")]
        public int DekSmartDiscount { get; set; }

        [RegularExpression("^[0-9]+$", ErrorMessage = "Please enter a whole number between 0 and 100.")]
        public int Packaging { get; set; }

        public bool GSTExempt { get; set; }
        public bool PSTExempt { get; set; }
        public string ShipCharges { get; set; }

        // Hidden fields.
        public int EmployeeID { get; set; }
        public System.DateTime Created { get; set; }
        public Nullable<System.DateTime> Modified { get; set; }

        public virtual ICollection<CustomerCarrier> CustomerCarriers { get; set; }
        public virtual ICollection<CustomerContact> CustomerContacts { get; set; }
        public virtual ICollection<CustOrder> CustOrders { get; set; }
        public virtual ICollection<ShippingAddress> ShippingAddresses { get; set; }
    }
}