using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public partial class View_Carrier
    {
        //CustomerCarrier
        public int CustomerCarrierID { get; set; }
        public int CarrierID { get; set; }
        public int CustomerID { get; set; }
        public string Account { get; set; }
        public string CustomerCarrierComments { get; set; }

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
        public string CarrierComments { get; set; }
    }
}
