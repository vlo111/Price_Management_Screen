using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataAccess.Models
{
    public partial class ContactInfo
    {
        public int ContactInfoID { get; set; }
        public int ContactInfoTypeID { get; set; }
        public int CustomerContactID { get; set; }
        [Required(ErrorMessage = "Required (Ex: \"Business\", \"Personal\")")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Name { get; set; }
        [Required(ErrorMessage = "Required (Ex: \"111-222-3333\", \"john@gmail.com\")")]
        [RegularExpression("^((?![<>]).)*$", ErrorMessage = "Angle brackets < and > are not allowed.")]
        public string Contact { get; set; }
        public bool PrimaryContact { get; set; }
        [NotMapped]  // Data is mapped/fetched on-demand.
        public ContactInfoType ContactInfoType;
    }
}
