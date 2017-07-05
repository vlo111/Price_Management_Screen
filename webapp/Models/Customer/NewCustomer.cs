using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace CenDek.Models.Customer
{
    public class NewCustomer
    {
        //Customer Properties
        
        [Required]
        [DisplayName("Company")]
        public string CompanyName { get; set; }
        [Required]
        public string PhoneNo { get; set; }
        public string CellNo { get; set; }
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

        //Customer Contact Properties
        [DisplayName("First")]
        public string ContactFirst { get; set; }
        [DisplayName("Last")]
        public string ContactLast { get; set; }
        [DisplayName("Job Title")]
        public string JobTitle { get; set; }
        [DisplayName("Email")]
        public string ContactEmail { get; set; }
        [DisplayName("Phone")]
        public string ContactPhoneNo { get; set; }
        [DisplayName("Cell")]
        public string ContactCellNo { get; set; }
        [DisplayName("Fax")]
        public string ContactFax { get; set; }
        [DisplayName("Notes")]
        public string ContactNotes { get; set; }
    }
}