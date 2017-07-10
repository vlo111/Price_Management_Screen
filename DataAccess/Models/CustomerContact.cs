using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public partial class CustomerContact
    {
        public int CustomerContactID { get; set; }
        public int CustomerID { get; set; }
        [DisplayName("First Name")]
        public string First { get; set; }
        [DisplayName("Last Name")]
        public string Last { get; set; }
        [DisplayName("Job Title")]
        public string JobTitle { get; set; }
        public string Notes { get; set; }
        public virtual Customer Customer { get; set; }
    }
}
