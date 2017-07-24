using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace DataAccess.Models
{
    public partial class CustomerCarrier
    {
        public int CustomerCarrierID { get; set; }
        public int CarrierID { get; set; }
        public int CustomerID { get; set; }
        public string Account { get; set; }
        public string Comments { get; set; }
        public virtual Carrier Carrier { get; set; }
        public virtual Customer Customer { get; set; }
    }
}