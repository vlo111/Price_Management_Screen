using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
//using Microsoft.Reporting.WinForms;

namespace CenDek.Controllers
{
    [Authorize]
    public class ReportController : Controller
    {
        // GET: Report
        public ActionResult Index()
        {
            return View();
        }
        //in progress
        //public FileContentResult QuotationReport(string format, string CustOrderId)
        //{
        //    LocalReport localReport = new LocalReport();
        //    localReport.ReportPath = Server.MapPath("~/Reports/Quotation.rdl");
        //    ReportDataSource reportDataSource = new ReportDataSource();
        //    reportDataSource.Name = "DataSet_OrderPart";
        //    //ReportViewer rpw = new ReportViewer();
        //    localReport.DataSources.Clear();
        //    localReport.DataSources.Add(reportDataSource);
        //    //List<ReportParameter> parameters = new List<ReportParameter>();
        //    //parameters.Add(new ReportParameter("","") { });
        //    localReport.SetParameters(new ReportParameter("CustOrderId", CustOrderId) { });
          

        //    string reportType = "pdf";
        //    string mimeType;
        //    string encoding;
        //    string fileNameExtension;
        //    string Deviceinfo = @"<DeviceInfo><OutputFormat>PDF</OutputFormat><HumanReadablePDF>False</HumanReadablePDF></DeviceInfo>";

        //    Warning[] warnings;
        //    string[] streams;
        //    byte[] renderedBytes;
        //    //Render the report
        //    renderedBytes = localReport.Render(reportType, Deviceinfo, out mimeType, out encoding, out fileNameExtension, out streams, out warnings);
        //    return File(renderedBytes, "pdf");
        //}
    }
}