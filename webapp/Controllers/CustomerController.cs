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
        IShippingAddressService _shippingAddressService;

        public CustomerController(CenDekContext dbContext, ICustomerService customerService, ICustomerContactService customerContactService, ICustomerCarrierService customerCarrierService, IShippingAddressService shippingAddressService)
        {
            _dbContext = dbContext;
            _customerService = customerService;
            _customerContactService = customerContactService;
            _customerCarrierService = customerCarrierService;
            _shippingAddressService = shippingAddressService;
        }

        // GET: Client
        public ActionResult Index()
        {
            var breadCrumbs = new BreadcrumbModel("Customers", new List<BreadcrumbLink>());
            ViewBag.BreadCrumbs = breadCrumbs;
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> AddNewCustomer(Customer newCustomer)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerService.AddNewCustomer(newCustomer);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Add customer failed" });
            }
        }

        public async Task<ActionResult> Detail(int id)
        {
            var customer = await _dbContext.Customers.FindAsync(id);

            var breadCrumbs = new BreadcrumbModel(customer.Company, new List<BreadcrumbLink>());
            breadCrumbs.Links.Add(new BreadcrumbLink(Url.Action("Index", "Customer", null, this.Request.Url.Scheme), "Customers"));
            ViewBag.BreadCrumbs = breadCrumbs;

            return View(customer);
        }

        // *** BEGIN SHIPPING ADDRESS ***

        public ActionResult GetShippingAddress(IDataTablesRequest request, int customerId)
        {
            string search = request.Search.Value.Trim();
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.ShippingAddresses.Where(t => t.CustomerID == customerId).OrderBy(t => t.Address1);
            var filteredData = data.Where(
                                            _item => 
                                            _item.Address1.Contains(search)   ||
                                            _item.Address2.Contains(search)   ||
                                            _item.City.Contains(search)       ||
                                            _item.Province.Contains(search)   ||
                                            _item.Country.Contains(search)    ||
                                            _item.PostalCode.Contains(search) ||
                                            _item.Comments.Contains(search)
                                         );
            var orderColums = request.Columns.Where(x => x.Sort != null);
            var dataPage = filteredData.OrderBy(orderColums).Skip(request.Start).Take(request.Length);
            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public async Task<ActionResult> AddShippingAddress(ShippingAddress newShippingAddress)
        {
            if (ModelState.IsValid)
            {
                var response = await _shippingAddressService.AddShippingAddress(newShippingAddress);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Add shipping address failed" });
            }
        }

        // *** END SHIPPING ADDRESS ***

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
            string search = request.Search.Value;
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.Customers;
            var filteredData = data.Where(
                                            _item =>
                                            _item.Address1.Contains(request.Search.Value) ||
                                            _item.Address2.Contains(request.Search.Value) ||
                                            _item.City.Contains(request.Search.Value) ||
                                            _item.Comments.Contains(request.Search.Value) ||
                                            _item.Company.Contains(request.Search.Value) ||
                                            _item.Country.Contains(request.Search.Value) ||
                                            _item.Fax.Contains(request.Search.Value) ||
                                            _item.PhoneNo.Contains(request.Search.Value) ||
                                            _item.PostalCode.Contains(request.Search.Value) ||
                                            _item.Province.Contains(request.Search.Value)
                                          );
            var orderColums = request.Columns.Where(x => x.Sort != null);
            var dataPage = filteredData.OrderBy(orderColums).Skip(request.Start).Take(request.Length);
            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        // *** BEGIN CUSTOMER CONTACTS ***

        [HttpGet]
        public ActionResult GetCustomerContacts(int customerId)
        {
            var contacts = _dbContext.CustomerContacts.Where(x => x.CustomerID == customerId).OrderBy(x => x.Last).ThenBy(x => x.First);

            foreach (CustomerContact contact in contacts)
            {
                contact.ContactInfos = _dbContext.ContactInfoes.Where(x => x.CustomerContactID == contact.CustomerContactID).OrderByDescending(x => x.PrimaryContact).ThenBy(x => x.ContactInfoTypeID).ThenBy(x => x.Name).ThenBy(x => x.Contact).ToList();
                
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
        public async Task<ActionResult> AddContactInfo(ContactInfo newContactInfo)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.AddContactInfo(newContactInfo);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Add contact info failed" });
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

        [HttpPost]
        public async Task<ActionResult> UpdateContactInfoField(int contactInfoId, string field, string value)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.UpdateContactInfoField(contactInfoId, field, value);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Update contact info failed" });
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

        [HttpPost]
        public async Task<ActionResult> SetPrimaryContact(int? customerContactId, int? contactInfoId)
        {
            if (ModelState.IsValid)
            {
                var response = await _customerContactService.SetPrimaryContact(customerContactId, contactInfoId);
                return Json(response);
            }
            else
            {
                return Json(new { success = false, responseText = "Set primary contact failed" });
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
