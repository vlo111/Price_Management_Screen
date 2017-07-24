using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CenDek.Models;
using DataAccess.Models;
using DataAccess;
using CenDek.Services;
using System.Threading.Tasks;

namespace CenDek.Controllers
{
    [Authorize]
    public class OrderController : Controller
    {

        CenDekContext _dbContext;
        ICustomerService _customerService;
        ICustomerContactService _customerContactService;

        public OrderController(CenDekContext dbContext, ICustomerService customerService, ICustomerContactService customerContactService)
        {
            _dbContext = dbContext;
            _customerService = customerService;
            _customerContactService = customerContactService;
        }

        // GET: Order
        public ActionResult Index()
        {
            return View();
        }

        // GET
        public async Task<ActionResult> New(int id)
        {
            NewCustomerOrder model = new NewCustomerOrder();
            var customer = await _dbContext.Customers.FindAsync(id);
            model.customer = customer;
            model.customerID = customer.CustomerID;


            return View(model);
        }

        // GET
        [HttpPost]
        public ActionResult New()
        {
            return View();
        }


        // GET
        public ActionResult Edit(int id)
        {
            return View();
        }
    }
}