using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Models
{
    public partial class CustomerContact
    {
        public CustomerContact() {}

        public int CustomerContactID { get; set; }
        public int CustomerID { get; set; }
        [DisplayName("First Name")]
        [Required(ErrorMessage = "First name is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string First { get; set; }
        [DisplayName("Last Name")]
        [Required(ErrorMessage = "Last name is required")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Last { get; set; }
        [DisplayName("Job Title")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string JobTitle { get; set; }
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Notes { get; set; }
        public virtual Customer Customer { get; set; }
        [NotMapped]  // Data is mapped/fetched on-demand.
        public List<ContactInfo> ContactInfos;
    }
}
