using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Linq;
using System.Web;
using DataAccess.Models;

namespace CenDek.Models
{
	public class NewCustomerOrder
	{
	    public NewCustomerOrder()
	    {
	        Files = new List<FileInfo>();
	    }
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
	    public List<FileInfo> Files { get; set; }

    }

    public class CustOrderPart
    {
        public CustOrderPart()
        {
            this.Files = new List<DataAccess.Models.File>();
            this.Image = new Image();
        }

        public int CustOrderPartId { get; set; }
        public string category { get; set; }
        public string partID { get; set; }
        public Image Image { get; set; }
        public string Number { get; set; }
        public string Description { get; set; }
        public int Price { get; set; }
        public double Quantity { get; set; }
        public string Comments { get; set; }
        public MeasUnit MeaUnit { get; set; }
        public double Weight { get; set; }
        public ICollection<DataAccess.Models.File> Files { get; set; }
    }
    public class AttachmentsModel
    {
        public long AttachmentID { get; set; }
        public string FileName { get; set; }
        public string Path { get; set; }
        public long size { get; set; }
    }


    //Extra classes to format the results the way the select2 dropdown wants them
    public class Select2PagedResult
    {
        public int Total { get; set; }
        public List<Select2Result> Results { get; set; }
    }

    public class Select2Result
    {
        public string id { get; set; }
        public string text { get; set; }
    }


    //
    // Summary:
    //     Possible results for order flow states
    public enum OrderStates
    {
        //
        // Summary:
        //     Order Created by not completed
        Draft = 0,
        //
        // Summary:
        //     Order Created and completed waiting for a comparison Order
        Primary = 1,
        //
        // Summary:
        //     Comparison Order created and waiting for Compare to be approved.
        Secondary = 2,
        //
        // Summary:
        //     Order has been completed and if comparison order, the order has been agreed. 
        Review = 3,
        //
        // Summary:
        //     The reviewer did not pass the order and it needs to be updated. 
        Failed = 4,
        //
        // Summary:
        //     Order has been reviewed and now waiting on Customer either for a Quote or Order
        Approved = 5,
        //
        // Summary:
        //     Quote has been issued to the Customer
        Quote = 6,
        //
        // Summary:
        //     Customer has requested the order go through. It is now waiting for Shipping date. 
        Shipping = 7,
        //
        // Summary:
        //     Shipping Date has been added. The Work order has been sent to the factory.
        WorkOrder = 8,
        //
        // Summary:
        //     An Invoice has been sent to the customer for the Order
        Invoiced = 9,
        //
        // Summary:
        //     A second and final invoice has been sent to the customer.
        FinalInvoice = 10
    }
}