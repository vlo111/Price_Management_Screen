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
}