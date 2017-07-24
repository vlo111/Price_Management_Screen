using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using DataAccess.Models;

namespace CenDek.Models
{
	public class NewCustomerOrder
	{
		//display
        public  DataAccess.Models.Customer customer { get; set; }

		public int customerID { get; set; }
        [DisplayName("Work Order No")]
		public string workOrderNumber { get; set; }
        [DisplayName("Invoice No")]
        public string invoiceNumber { get; set; }
		public int contactID { get; set; }

        //pricing
        [DisplayName("Currency")]
        public int currencyID { get; set; }
        [DisplayName("Price Order Date")]
        public DateTime priceOrderDate { get; set; }

    }
}