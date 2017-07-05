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

namespace CenDek.Controllers
{
    public class CustomerController : Controller
    {
        CenDekContext _dbContext;

        public CustomerController(CenDekContext dbContext)
        {
            _dbContext = dbContext;
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
                Customer customer = new Customer();
                customer.Company = newCustomer.CompanyName;
                customer.PhoneNo = newCustomer.PhoneNo;
                customer.Created = DateTime.UtcNow;

                //todo finish this
                _dbContext.Customers.Add(customer);

                try
                {
                   await _dbContext.SaveChangesAsync();
                }
                catch (System.Data.Entity.Validation.DbEntityValidationException ex)
                {
                    System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                    throw;
                }

                CustomerContact contact = new CustomerContact();
                contact.First = newCustomer.ContactFirst;
                contact.Last = newCustomer.ContactLast;
                contact.JobTitle = newCustomer.JobTitle;
                contact.Notes = newCustomer.ContactNotes;
                customer.CustomerContacts.Add(contact);

                try
                {
                    await _dbContext.SaveChangesAsync();
                }
                catch (System.Data.Entity.Validation.DbEntityValidationException ex)
                {
                    System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                    throw;
                }

                if (newCustomer.ContactPhoneNo != null && newCustomer.ContactPhoneNo.Length>0)
                {
                    ContactInfo contactInfo = new ContactInfo();
                    contactInfo.Contact = newCustomer.ContactPhoneNo;
                    contactInfo.Name = "Phone";
                    contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Phone").ContactInfoTypeID;
                }

                if (newCustomer.ContactEmail != null && newCustomer.ContactEmail.Length > 0)
                {
                    ContactInfo contactInfo = new ContactInfo();
                    contactInfo.Contact = newCustomer.ContactEmail;
                    contactInfo.Name = "Email";
                    contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Email").ContactInfoTypeID;
                }

                if (newCustomer.ContactCellNo != null && newCustomer.ContactCellNo.Length > 0)
                {
                    ContactInfo contactInfo = new ContactInfo();
                    contactInfo.Contact = newCustomer.ContactCellNo;
                    contactInfo.Name = "Cell";
                    contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Phone").ContactInfoTypeID;
                }

                if (newCustomer.ContactFax != null && newCustomer.ContactFax.Length > 0)
                {
                    ContactInfo contactInfo = new ContactInfo();
                    contactInfo.Contact = newCustomer.ContactFax;
                    contactInfo.Name = "Fax";
                    contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Phone").ContactInfoTypeID;
                }
                try
                {
                    await _dbContext.SaveChangesAsync();
                }
                catch (System.Data.Entity.Validation.DbEntityValidationException ex)
                {
                    System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));
                   
                    throw;
                }

                return RedirectToAction("Action", new { id = customer.CustomerID });
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