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
        public ActionResult GetCustomerOrders(IDataTablesRequest request, int customerId, string company, string state)
        {
            // data from this method will be shown in DashboardIndex
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;

            IQueryable<CustOrder> filteredData;
            // IQueryable<CustOrder> dataPage;

            var orderColums = request.Columns.Where(x => x.Sort != null);
            //var fieldsort = orderColums.Select(n => n.Field);
            //foreach (var item in fieldsort)
            //{
            //    if (item.ToLower().Contains("state"))
            //    {
            //        item = "State";
            //    }
            //}
            //
            // }
            var data = _dbContext.CustOrders;
            filteredData = data;
            //int? State = null;
            //int? customer = null;
            //if (!string.IsNullOrEmpty(state))
            //{
            //    State = int.Parse(state);
            //}
            //if (customerId > 0)
            //{
            //    customer = customerId;
            //} //todo



            var dataPage = (from c in _dbContext.CustOrders
                            join a in _dbContext.Customers on c.CustomerID equals a.CustomerID
                            join e in _dbContext.Employees on c.EmployeeID equals e.EmployeeID
                            //where object.Equals(c.CustomerID, customer) &&
                            //object.Equals(a.Company, company) &&

                            // object.Equals(c.State, State)
                            select new
                            {
                                CustOrderID = c.CustOrderID,
                                Company = a.Company,
                                FirstName = e.FirstName,
                                LastName = e.LastName,
                                CreatedDate = c.CreatedDate,
                                State = c.State

                            }).OrderBy(orderColums).Skip(request.Start).Take(request.Length).AsEnumerable().Select(o => new
                            {
                                CustOrderID = o.CustOrderID,
                                Company = o.Company,
                                FirstName = o.FirstName,
                                LastName = o.LastName,
                                CreatedDate = o.CreatedDate,
                                State = o.State,
                                StateName = Enum.GetName(typeof(Models.OrderStates), o.State)
                            });




            var response = DataTablesResponse.Create(request, data.Count(), filteredData.Count(), dataPage);

            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }
    }
}