using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CenDek.Models;
using DataAccess;
using DataTables.AspNet.Core;
using DataTables.AspNet.Mvc5;
using CenDek.App_Helpers;
using CenDek.Models.Customer;
using DataAccess.Models;
using System.Threading.Tasks;
using CenDek.Services;

namespace CenDek.Controllers
{
    [Authorize]
    public class SettingsController : Controller
    {
        CenDekContext _dbContext;
        ICarrierService _carrierService;

        public SettingsController(CenDekContext dbContext, ICarrierService carrierService)
        {
            _dbContext = dbContext;
            _carrierService = carrierService;
        }

        // GET: Settings
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Carriers()
        {
            return View();
        }

        public ActionResult New()
        {
            var breadCrumbs = new BreadcrumbModel("New Carrier", new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Carriers", "Settings", null, this.Request.Url.Scheme), "Carriers"));
            ViewBag.BreadCrumbs = breadCrumbs;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> New(Carrier newCarrier)
        {
            if (ModelState.IsValid)
            {
                int customerId = await _carrierService.AddCarrier(newCarrier);
                return RedirectToAction("Carriers");
            }


            var breadCrumbs = new BreadcrumbModel("New Customer", new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Carriers", "Settings", null, this.Request.Url.Scheme), "Carriers"));
            ViewBag.BreadCrumbs = breadCrumbs;
            return this.View();
        }

        public async Task<ActionResult> Detail(int id)
        {
            var carrier = await _dbContext.Carriers.FindAsync(id);

            var breadCrumbs = new BreadcrumbModel(carrier.CarrierID.ToString(), new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Carriers", "Settings", null, this.Request.Url.Scheme), "Carriers"));
            ViewBag.BreadCrumbs = breadCrumbs;

            return View(carrier);
        }

        public ActionResult GetCarriers(IDataTablesRequest request)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.Carriers.OrderBy(t => t.CarrierID);

            // Global filtering.
            // Filter is being manually applied due to in-memmory (IEnumerable) data.
            // If you want something rather easier, check IEnumerableExtensions Sample.
            var filteredData = data.Where(_item => _item.CarrierName.Contains(request.Search.Value));

            // Paging filtered data.
            // Paging is rather manual due to in-memmory (IEnumerable) data.
            var orderColums = request.Columns.Where(x => x.Sort != null);
            var dataPage = data.OrderBy(orderColums).Skip(request.Start).Take(request.Length);

            // Response creation. To create your response you need to reference your request, to avoid
            // request/response tampering and to ensure response will be correctly created.
            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);

            // Easier way is to return a new 'DataTablesJsonResult', which will automatically convert your
            // response to a json-compatible content, so DataTables can read it when received.
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public async Task<ActionResult> UpdateCarrierDetails(Carrier carrierDetails)
        {
            if (ModelState.IsValid)
            {
                var response = await _carrierService.UpdateCarrier(carrierDetails);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Customer Save Failed" });

            }

        }
    }
}