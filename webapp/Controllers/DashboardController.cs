using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess;
using DataAccess.Models;
using DataTables.AspNet.Core;
using DataTables.AspNet.Mvc5;
using CenDek.App_Helpers;

namespace CenDek.Controllers
{
    public class DashboardController : Controller
    {
        CenDekContext _dbContext;

        public DashboardController(CenDekContext dbContext)
        {
            this._dbContext = dbContext;
        }
        // GET: Dashboard
        public ActionResult Index()
        {
            return View();
        }


        /// <summary>
        /// This method is used to return all the customers to be shown in dashboard index 
        /// </summary>
        /// <param name="request"></param>
        /// <param name="customerId"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult GetCustomerOrders(IDataTablesRequest request, int customerId)
        {
            // data from this method will be shown in DashboardIndex
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;

            IQueryable<CustOrder> filteredData;
            IQueryable<CustOrder> dataPage;

            var orderColums = request.Columns.Where(x => x.Sort != null);
            var data = _dbContext.CustOrders;
            filteredData = data;
            if (customerId>0)
            {
                dataPage = data.Where(n => n.CustomerID == customerId)
                   .OrderBy(n=>n.CustOrderID)
                    .Skip(request.Start).Take(request.Length);
            }
            else
            {
                dataPage = data
                   .OrderBy(n => n.CustOrderID)
                    .Skip(request.Start).Take(request.Length);
            }

            foreach (CustOrder item in dataPage)
            {
                item.Customer = _dbContext.Customers.FirstOrDefault(x => x.CustomerID == item.CustomerID);
                if (item.Customer != null)
                    item.Customer.CustOrders = null;
                item.Employee = _dbContext.Employees.FirstOrDefault(x => x.EmployeeID == item.EmployeeID);
                if (item.Employee != null)
                    item.Employee.CustOrders = null;
            }




            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);

            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }
    }
}