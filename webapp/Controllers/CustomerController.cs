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
    public class CustomerController : Controller
    {
        CenDekContext _dbContext;
        ICustomerService _customerService;

        public CustomerController(CenDekContext dbContext, ICustomerService customerService)
        {
            _dbContext = dbContext;
            _customerService = customerService;
        }

        // GET: Client
        public ActionResult Index()
        {
            var breadCrumbs = new BreadcrumbModel("Customers", new List<BreadcrumbLink>());
            ViewBag.BreadCrumbs = breadCrumbs;
            return View();
        }

        public ActionResult New()
        {
            var breadCrumbs = new BreadcrumbModel("New Customer", new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Customer", "Index", null, this.Request.Url.Scheme), "Customers"));
            ViewBag.BreadCrumbs = breadCrumbs;
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> New(NewCustomer newCustomer)
        {
            if (ModelState.IsValid)
            {
                int customerId = await _customerService.AddCustomer(newCustomer);

                return RedirectToAction("Action", new { id = customerId });
            }


            var breadCrumbs = new BreadcrumbModel("New Customer", new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Customer", "Index", null, this.Request.Url.Scheme), "Customers"));
            ViewBag.BreadCrumbs = breadCrumbs;
            return this.View();
        }

        public ActionResult Detail(int id)
        {
            var breadCrumbs = new BreadcrumbModel("Customers", new List<BreadcrumbLink>());
            ViewBag.BreadCrumbs = breadCrumbs;

            return View();
        }

        public ActionResult PageData(IDataTablesRequest request)
        {
            // Nothing important here. Just creates some mock data.
            var data = _dbContext.Customers;

            // Global filtering.
            // Filter is being manually applied due to in-memmory (IEnumerable) data.
            // If you want something rather easier, check IEnumerableExtensions Sample.
            var filteredData = data.Where(_item => _item.Company.Contains(request.Search.Value));

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
    }
}