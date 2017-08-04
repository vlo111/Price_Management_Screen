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
    public class CustomerController : Controller
    {
        CenDekContext _dbContext;
        ICustomerService _customerService;
        ICustomerContactService _customerContactService;
        ICustomerCarrierService _customerCarrierService;

        public CustomerController(CenDekContext dbContext, ICustomerService customerService, ICustomerContactService customerContactService, ICustomerCarrierService customerCarrierService)
        {
            _dbContext = dbContext;
            _customerService = customerService;
            _customerContactService = customerContactService;
            _customerCarrierService = customerCarrierService;
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
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Index", "Customer", null, this.Request.Url.Scheme), "Customers"));
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
                return RedirectToAction("Detail", new { id = customerId });
            }


            var breadCrumbs = new BreadcrumbModel("New Customer", new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Index", "Customer", null, this.Request.Url.Scheme), "Customers"));
            ViewBag.BreadCrumbs = breadCrumbs;
            return this.View();
        }

        public async Task<ActionResult> Detail(int id)
        {
            var customer = await _dbContext.Customers.FindAsync(id);

            var breadCrumbs = new BreadcrumbModel(customer.Company, new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Index", "Customer", null, this.Request.Url.Scheme), "Customers"));
            ViewBag.BreadCrumbs = breadCrumbs;

            return View(customer);
        }

        [HttpPost]
        public async Task<ActionResult> NewShippingAddress(ShippingAddress newShippingAddress)
        {
            //TODO
            return PartialView("Partial_Views/NewShippingAddress", newShippingAddress);
        }

        [HttpPost]
        public async Task<ActionResult> NewCustomerCarrier(CustomerCarrier custCarrier)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerCarrierService.AddCarrier(custCarrier);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Add customer carrier failed" });

            }

            //return PartialView("Partial_Views/NewContact", newContact);
        }

        [HttpPost]
        public async Task<ActionResult> UpdateCompanyDetails(Customer companyDetails)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerService.UpdateCustomer(companyDetails);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Customer Save Failed" });

            }

        }

        public ActionResult GetCustomers(IDataTablesRequest request)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
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

        public ActionResult GetShippingAddress(IDataTablesRequest request, int customerId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.ShippingAddresses.Where(t => t.CustomerID == customerId).OrderBy(t => t.ShippingAddressID);

            // Global filtering.
            // Filter is being manually applied due to in-memmory (IEnumerable) data.
            // If you want something rather easier, check IEnumerableExtensions Sample.
            var filteredData = data.Where(_item => _item.Address1.Contains(request.Search.Value));

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

        // *** BEGIN CUSTOMER CONTACTS ***

        public ActionResult GetContacts(IDataTablesRequest request, int customerId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.CustomerContacts.Where(t => t.CustomerID == customerId);  // Sorting is done by the data table.
            var filteredData = data.Where(_item => _item.Last.Contains(request.Search.Value));
            var orderColums = request.Columns.Where(x => x.Sort != null);
            var dataPage = data.OrderBy(orderColums).Skip(request.Start).Take(request.Length);
            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult GetCustomerContacts(int customerId)
        {
            var contacts = _dbContext.CustomerContacts.Where(x => x.CustomerID == customerId).OrderBy(x => x.Last).ThenBy(x => x.First);

            foreach (CustomerContact contact in contacts)
            {
                contact.ContactInfos = _dbContext.ContactInfoes.Where(x => x.CustomerContactID == contact.CustomerContactID).OrderByDescending(x => x.PrimaryContact).ThenBy(x => x.Contact).ToList();
                
                foreach (ContactInfo info in contact.ContactInfos)
                {
                    info.ContactInfoType = _dbContext.ContactInfoTypes.Where(x => x.ContactInfoTypeID == info.ContactInfoTypeID).Single();
                }
            }

            return PartialView(@"Partial_Views/ContactCards", contacts);
        }

        [HttpPost]
        public async Task<ActionResult> AddCustomerContact(CustomerContact newCustomerContact)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.AddContact(newCustomerContact);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Add customer contact failed" });
            }
        }

        [HttpPost]
        public async Task<ActionResult> UpdateCustomerContact(CustomerContact updatedCustomerContact)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.UpdateCustomerContact(updatedCustomerContact);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Update customer contact failed" });
            }
        }

        [HttpPost]
        public async Task<ActionResult> UpdateCustomerContactField(int customerContactId, string field, string value)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.UpdateCustomerContactField(customerContactId, field, value);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Update customer contact failed" });
            }
        }

        [HttpPost]  // Not HttpDelete? https://stackoverflow.com/a/42795093/1348592
        public async Task<ActionResult> DeleteCustomerContact(int? customerContactId)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.DeleteCustomerContact(customerContactId);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Delete customer contact failed" });
            }
        }

        [HttpPost]  // Not HttpDelete? https://stackoverflow.com/a/42795093/1348592
        public async Task<ActionResult> DeleteContactInfo(int? contactInfoId)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.DeleteContactInfo(contactInfoId);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Delete contact info failed" });
            }
        }

        // *** END CUSTOMER CONTACTS ***

        public ActionResult GetCustomerCarriers(IDataTablesRequest request, int customerId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.View_Carrier.Where(t => t.CustomerID == customerId).OrderBy(t => t.CarrierID);
            var filteredData = data.Where(_item => _item.CarrierName.Contains(request.Search.Value));
            var orderColums = request.Columns.Where(x => x.Sort != null);
            var dataPage = data.OrderBy(orderColums).Skip(request.Start).Take(request.Length);
            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult PopulateCarrierDropdown()
        {
            var carriers = _dbContext.Carriers.Select(x => new
            {
                ID = x.CarrierID,
                Text = x.CarrierName
            });
            return Json(carriers, JsonRequestBehavior.AllowGet);
        }
    }
}
