﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using CenDek.Models;
using DataAccess.Models;
using DataAccess;
using CenDek.Services;
using System.Threading.Tasks;
using System.IO;
using DataTables.AspNet.Core;
using DataTables.AspNet.Mvc5;
using CenDek.App_Helpers;
using System.Data.Entity.Validation;
using System.Configuration;

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
            //using viewdata  
            return RedirectToAction("Dashboard", "Order");
        }

        public ActionResult View(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Dashboard", "Order");

            }
            return RedirectToAction("Detail", "Order", new { id = id });
        }
        public async Task<ActionResult> AddOrderForCustomer(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Dashboard", "Order");

            }
            try
            {
                Employee emp = _dbContext.Employees.FirstOrDefault(); //todo


                var customer = await _dbContext.Customers.FindAsync(id);


                CustOrder _custOrder = new CustOrder()
                {
                    Customer = customer,
                    CustomerID = customer.CustomerID,
                    CreatedDate = DateTime.UtcNow,
                    Revision = -1,
                    InvoiceNo = "",
                    EmployeeID = emp.EmployeeID,
                    GroupUrgencyID = -1,
                    State = (int)OrderStates.Draft,
                    CommentsCentury = "" //todo
                };

                _dbContext.CustOrders.Add(_custOrder);
                _dbContext.SaveChanges();

                // here we are creating a default tag against new order
                int custOrderId = _custOrder.CustOrderID;
                var tagname = "Default-" + custOrderId;
                _dbContext.Tags.Add(new Tag
                {
                    OrderID = custOrderId,
                    TagName = tagname
                });
                _dbContext.SaveChanges();

                return RedirectToAction("Detail", "Order", new { id = _custOrder.CustOrderID });
            }
            catch (DbEntityValidationException e)
            {
                foreach (var eve in e.EntityValidationErrors)
                {
                    // For testing purpose, consoling the bug, we will explicitly handle this exception later
                    Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                        eve.Entry.Entity.GetType().Name, eve.Entry.State);
                    foreach (var ve in eve.ValidationErrors)
                    {
                        Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                            ve.PropertyName, ve.ErrorMessage);
                    }
                }

            }
            return RedirectToAction("Detail", "Order");

        }
        // GET
        public async Task<ActionResult> Detail(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Dashboard", "Order");

            }

            var custOrders = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == id);

            if (custOrders.State > 2)
            {
                return RedirectToAction("OrderReview", "Order", new { id = id });
            }

            var orderCustomer = _dbContext.Customers.Include("CustomerContacts").FirstOrDefault(x => x.CustomerID == custOrders.CustomerID);
            NewCustomerOrder model = new NewCustomerOrder();

            #region dropdowns
            // todo var customerCarriers = _dbContext.CustomerCarriers.Select(cc => cc.CustomerID == custOrders.CustomerID);
            var dropdownVD = new SelectList(_dbContext.Carriers.Include("CustomerCarriers").Where(n => (!string.IsNullOrEmpty(n.CarrierName))).ToList(), "CarrierID", "CarrierName");
            ViewData["StudDataVD"] = dropdownVD;
            //using viewbag  
            ViewBag.dropdownVD = dropdownVD;
            ViewBag.customerList = new SelectList(_dbContext.Customers.Where(n => (!string.IsNullOrEmpty(n.Company))).ToList(), "CustomerID", "Company");
            ViewBag.coloutList = new SelectList(_dbContext.Colours.Where(n => (!string.IsNullOrEmpty(n.Name))).ToList(), "ColourID", "Name");
            ViewBag.categoriesList = GetCategoriesSelectList(0);

            if (orderCustomer != null)
                ViewBag.ContactDropdown = GenerateCustomerContactsDropdown(orderCustomer.CustomerContacts.ToList());

            #endregion

            if (custOrders != null)
            {
                var customer = await _dbContext.Customers.FindAsync(custOrders.CustomerID);
                if (customer != null)
                {
                    custOrders.Customer = customer;
                    custOrders.CustomerID = customer.CustomerID;
                }


                var OrderParts = string.Join<string>(",", custOrders.Parts.Select(m => m.OrderPartID.ToString()));
                ViewBag.OrderPartIDs = OrderParts;// string.Join<string>(",", OrderParts.Select(n=>n.ToString()));
            }

            ViewBag.OrderId = id;
            return View(custOrders);
        }


        private IEnumerable<SelectListItem> GetCategoriesSelectList(int categoryParentId)
        {
            var categories = _dbContext.Categories.ToList();
            // Initialise list and add first "All" item
            List<SelectListItem> options = new List<SelectListItem>();
            // Get the top level parents
            var parents = categories.Where(x => x.CategoryParentID == categoryParentId);
            foreach (var parent in parents)
            {
                // Add SelectListItem for the parent
                options.Add(new SelectListItem()
                {
                    Value = parent.CategoryID.ToString(),
                    Text = parent.Name
                });
                // Get the child items associated with the parent
                var children = categories.Where(x => x.CategoryParentID == parent.CategoryID);
                // Add SelectListItem for each child
                foreach (var child in children)
                {
                    options.Add(new SelectListItem()
                    {
                        Value = child.CategoryID.ToString(),
                        Text = string.Format("\xA0\xA0{0}", child.Name)
                    });
                    var subchildren = categories.Where(x => x.CategoryParentID == child.CategoryID);
                    foreach (var subchild in subchildren)
                    {
                        options.Add(new SelectListItem()
                        {
                            Value = subchild.CategoryID.ToString(),
                            Text = string.Format("\xA0\xA0\xA0\xA0{0}", subchild.Name)
                        });

                    }
                }
            }
            return options;
        }

        [HttpGet]
        public ActionResult GetCategories(String categoryParentId, int entityId = 0)
        {
            var categories = _dbContext.Categories.ToList();
            // Initialise list and add first "All" item
            List<SelectListItem> options = new List<SelectListItem>();
            // Get the top level parents
            IEnumerable<Category> parents;

            if (entityId > 0)
            {
                parents = categories.Where(x => x.CategoryParentID == entityId);
            }
            else if (categoryParentId.Equals("All") || categoryParentId.Equals("Recommended"))
            {
                parents = categories;
            }
            else
            {
                parents = categories.Where(x => x.Name == categoryParentId);
            }

            foreach (var parent in parents)
            {
                // Add SelectListItem for the parent
                options.Add(new SelectListItem()
                {
                    Value = parent.CategoryID.ToString(),
                    Text = parent.Name
                });
                // Get the child items associated with the parent
                var children = categories.Where(x => x.CategoryParentID == parent.CategoryID);
                // Add SelectListItem for each child
                foreach (var child in children)
                {
                    options.Add(new SelectListItem()
                    {
                        Value = child.CategoryID.ToString(),
                        Text = string.Format("\xA0\xA0{0}", child.Name)
                    });
                    var subchildren = categories.Where(x => x.CategoryParentID == child.CategoryID);
                    foreach (var subchild in subchildren)
                    {
                        options.Add(new SelectListItem()
                        {
                            Value = subchild.CategoryID.ToString(),
                            Text = string.Format("\xA0\xA0\xA0\xA0{0}", subchild.Name)
                        });

                    }
                }
            }
            return Json(new { Data = options }, JsonRequestBehavior.AllowGet);
        }

        // GET
        public ActionResult Edit(int id)
        {
            return View();
        }

        /// <summary>
        /// Saves file against a specific customer order, file is saved in the solution folder and
        /// its name is saved in the database
        /// </summary>
        /// <param name="custOrderId"></param>
        /// <returns></returns>
        public ActionResult SaveUploadedFile(int custOrderId)
        {
            bool isSavedSuccessfully = true;
            string fName = "";
            try
            {
                foreach (string fileName in Request.Files)
                {
                    HttpPostedFileBase file = Request.Files[fileName];   //server gets the files in Request
                    //Save file content goes here
                    if (file != null)
                    {
                        fName = file.FileName;
                        if (file.ContentLength > 0)
                        {
                            string imagesPath = string.Format("{0}Images\\WallImages", Server.MapPath(@"\"));

                            var directory = new DirectoryInfo(imagesPath);

                            if (!directory.Exists)
                            {
                                Directory.CreateDirectory(imagesPath);
                            }
                            var originalDirectory = new DirectoryInfo(imagesPath);

                            string pathString = System.IO.Path.Combine(originalDirectory.ToString(), "imagepath");   //path in solution where the file would be saved

                            var fileName1 = Path.GetFileName(file.FileName);

                            bool isExists = System.IO.Directory.Exists(pathString);    //checking if path specified exists

                            if (!isExists)
                                System.IO.Directory.CreateDirectory(pathString);

                            var path = $"{pathString}\\{file.FileName}";    //creating absolute path where file will be saved 
                            file.SaveAs(path);


                            byte[] data;
                            using (Stream inputStream = file.InputStream)
                            {
                                MemoryStream memoryStream = inputStream as MemoryStream;
                                if (memoryStream == null)
                                {
                                    memoryStream = new MemoryStream();
                                    inputStream.CopyTo(memoryStream);
                                }
                                data = memoryStream.ToArray();
                            }

                            CustOrder custOrder = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == custOrderId);    //getting customer order against the custOrderId
                            if (custOrder != null)
                            {
                                custOrder.Files.Add(new DataAccess.Models.File()   // if order exists add these file[s] to that order
                                {
                                    Contents = data,
                                    Type = file.ContentType,
                                    Name = file.FileName,
                                    EmployeeID = 1
                                });
                                _dbContext.SaveChanges();
                            }
                        }
                    }
                }

            }
            catch (Exception ex)
            {
                isSavedSuccessfully = false;
            }
            if (isSavedSuccessfully)
            {
                return Json(new { Message = fName });
            }
            else
            {
                return Json(new { Message = "Error in saving file" });
            }
        }

        [HttpPost]
        public void RemoveAttachments(int custOrderId, string fileName)
        {
            CustOrder custOrder = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == custOrderId);    //getting customer order against the custOrderId
            if (custOrder != null)
            {
                try
                {
                    var fileObj = custOrder.Files.FirstOrDefault(n => n.Name.Equals(fileName));
                    custOrder.Files.Remove(fileObj);
                    _dbContext.SaveChanges();
                }
                catch (Exception)
                {


                }

            }

        }


        /// <summary>
        /// This method saves a file against each order part and also saves an optional commment with that part.
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult SaveOrderPartFile()
        {
            bool isSavedSuccessfully = false;
            string fName = "";

            // getting orderpartid and comment from the request form
            var id = Int32.Parse(Request.Form["orderPartId"]);
            var comment = Request.Form["comment"];
            try
            {
                HttpPostedFileBase file = Request.Files[0];   //server gets the files in Request
                if (file != null && id > 0)
                {
                    fName = file.FileName;
                    if (file.ContentLength > 0)
                    {
                        string imagesPath = string.Format("{0}Images\\WallImages", Server.MapPath(@"\"));
                        var directory = new DirectoryInfo(imagesPath);
                        if (!directory.Exists)
                        {
                            Directory.CreateDirectory(imagesPath);
                        }
                        var originalDirectory = new DirectoryInfo(imagesPath);
                        string pathString = Path.Combine(originalDirectory.ToString(), "imagepath");   //path in solution where the file would be saved
                        bool isExists = Directory.Exists(pathString);    //checking if path specified exists
                        if (!isExists)
                            Directory.CreateDirectory(pathString);

                        var path = $"{pathString}\\{file.FileName}";    //creating absolute path where file will be saved 
                        file.SaveAs(path);
                        byte[] data;
                        using (Stream inputStream = file.InputStream)
                        {
                            MemoryStream memoryStream = inputStream as MemoryStream;
                            if (memoryStream == null)
                            {
                                memoryStream = new MemoryStream();
                                inputStream.CopyTo(memoryStream);
                            }
                            data = memoryStream.ToArray();
                        }

                        OrderPart orderPart = _dbContext.OrderParts.FirstOrDefault(n => n.PartID == id);    //getting customer order against the custOrderId
                        if (orderPart != null)
                        {
                            orderPart.Files.Add(new DataAccess.Models.File()   // if order exists add these file[s] to that order
                            {
                                Contents = data,
                                Type = file.ContentType,
                                Name = file.FileName,
                                EmployeeID = 1
                            });
                            orderPart.Comments = comment;    // updating the comment of this order part
                            _dbContext.SaveChanges();
                            isSavedSuccessfully = true;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                isSavedSuccessfully = false;
            }

            if (isSavedSuccessfully)
            {
                return Json(new { Message = fName });
            }
            else
            {
                return Json(new { Message = "Error in saving file" });
            }
        }

        public ActionResult GetAttachments(int id)
        {

            return Json(new { Data = getFilesDetails(id) }, JsonRequestBehavior.AllowGet);
        }

        private List<AttachmentsModel> getFilesDetails(int id)
        {
            var attachmentsList = new List<AttachmentsModel>();
            var custOrders = _dbContext.CustOrders.Include("Files").FirstOrDefault(n => n.CustOrderID == id);
            if (custOrders != null)
            {
                string imagesPath = string.Format("{0}Images\\WallImages\\imagepath", Server.MapPath(@"\"));

                var directory = new DirectoryInfo(imagesPath);

                if (!directory.Exists)
                {
                    Directory.CreateDirectory(imagesPath);
                }

                var filesFromDirectory = directory.GetFiles().ToList();  // getting all files from directory
                foreach (var file in custOrders.Files)
                {

                    foreach (var dirFile in filesFromDirectory)
                    {
                        var i = dirFile.Length;
                        var dirFileName = dirFile.Name;

                        if (dirFileName == file.Name)
                        {
                            attachmentsList.Add(
                            new AttachmentsModel
                            {
                                AttachmentID = 1,
                                FileName = dirFileName,
                                Path = "/images/wallimages/imagepath/" + dirFileName,
                                size = dirFile.Length
                            }
                            );

                        }
                    }
                }
            }
            return attachmentsList;
        }

        public ActionResult GetOrdersGrid(IDataTablesRequest request)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.Parts;

            // Global filtering.
            // Filter is being manually applied due to in-memmory (IEnumerable) data.
            // If you want something rather easier, check IEnumerableExtensions Sample.

            // Paging filtered data.
            // Paging is rather manual due to in-memmory (IEnumerable) data.
            var orderColums = request.Columns.Where(x => x.Sort != null);

            List<Part> PartsList = data.Where(_item => _item.Description.Contains(request.Search.Value))
                .OrderBy(orderColums).Skip(request.Start).Take(request.Length)
                .ToList<Part>();

            // var filteredData = data.Where(_item => _item.CategoryID == subCategory && _item.Description.Contains(request.Search.Value));



            // Response creation. To create your response you need to reference your request, to avoid
            // request/response tampering and to ensure response will be correctly created.
            var response = DataTablesResponse.Create(request, data.Count(), PartsList.Count(), PartsList);

            // Easier way is to return a new 'DataTablesJsonResult', which will automatically convert your
            // response to a json-compatible content, so DataTables can read it when received.
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult GetOrderParts(IDataTablesRequest request, string orderPartsIds, int custOrderId, string category = null)
        {
            List<CustOrderPart> custOrderPartList = new List<CustOrderPart>();

            Category catObject = new Category();
            if (category != null)
            {
                if (category.Equals("All") || category.Equals("Recommended"))
                {
                    catObject = null;
                }
                else
                {
                    catObject = _dbContext.Categories.FirstOrDefault(x => x.Name.Equals(category));
                }
            }

            if (!string.IsNullOrEmpty(orderPartsIds) && custOrderId > 0)
            {
                _dbContext.Configuration.LazyLoadingEnabled = false;
                _dbContext.Configuration.ProxyCreationEnabled = false;

                var data = _dbContext.Parts.ToList();

                // Paging filtered data.
                // Paging is rather manual due to in-memmory (IEnumerable) data.
                var orderColums = request.Columns.Where(x => x.Sort != null);

                CustOrder cust = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == custOrderId);
                var t = orderPartsIds.Split(',').ToList();
                List<OrderPart> orderParts = _dbContext.OrderParts.Include("Files")
                    .OrderBy(n => n.OrderPartID)
                    .Where(n => t.Contains(n.OrderPartID.ToString()))
                    .ToList<OrderPart>();

                foreach (var itemPart in orderParts)
                {
                    if (itemPart != null)
                    {
                        foreach (var fileObj in itemPart.Files)
                        {
                            if (fileObj != null)
                            {
                                fileObj.OrderParts = null;
                            }
                        }
                        var part = new Part();

                        if (catObject != null)
                        {
                            part = data.FirstOrDefault(x => x.PartID == itemPart.PartID && catObject.CategoryID == x.CategoryID);
                        }
                        else
                        {
                            part = data.FirstOrDefault(x => x.PartID == itemPart.PartID);
                        }
                        if (part != null && part.PartID > 0)
                        {
                            part.Category = _dbContext.Categories.FirstOrDefault(x => x.CategoryID == part.CategoryID);
                            part.MeasUnit = _dbContext.MeasUnits.FirstOrDefault(x => x.MeasUnitID == part.MeasUnitID);
                            CustOrderPart custOrderPart = new CustOrderPart
                            {
                                CustOrderPartId = itemPart.OrderPartID,
                                category = part.Category?.Name,
                                partID = itemPart.PartID + "",
                                Image = part.Image,
                                Number = "0",
                                Description = part.Description,
                                Price = part.PriceID,
                                Comments = itemPart.Comments,
                                Quantity = itemPart.Quantity,
                                MeaUnit = part.MeasUnit,
                                Weight = part.Weight,
                                Files = itemPart.Files
                            };

                            custOrderPartList.Add(custOrderPart);
                        }
                    }
                }
            }

            var response = DataTablesResponse.Create(request, custOrderPartList.Count, custOrderPartList.Count, custOrderPartList);
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// This method returns a part against an id.
        /// </summary>
        /// <param name="partId"></param>
        /// <returns></returns>
        public ActionResult GetPartAgainstId(int partId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;

            var partObj = _dbContext.Parts.FirstOrDefault(x => x.PartID == partId);

            return new JsonResult { Data = partObj, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        [HttpGet]
        public ActionResult GetOrderPartsForDetails(IDataTablesRequest request, string OrderPartsIds, int custOrderID)
        {
            List<CustOrderPart> _custOrderPartList = new List<CustOrderPart>();

            if (!string.IsNullOrEmpty(OrderPartsIds) && custOrderID > 0)
            {


                _dbContext.Configuration.LazyLoadingEnabled = false;
                _dbContext.Configuration.ProxyCreationEnabled = false;

                var data = _dbContext.Parts.ToList();

                CustOrder cust = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == custOrderID);
                List<OrderPart> _orderParts = _dbContext.OrderParts.Where(n => OrderPartsIds.Contains(n.OrderPartID.ToString())).ToList<OrderPart>();
                // Global filtering.
                // Filter is being manually applied due to in-memmory (IEnumerable) data.
                // If you want something rather easier, check IEnumerableExtensions Sample.

                foreach (var _itemPart in _orderParts)
                {
                    Part _Part = data.FirstOrDefault(_item => _item.PartID == _itemPart.PartID);
                    _Part.Category = _dbContext.Categories.FirstOrDefault(x => x.CategoryID == _Part.CategoryID);
                    _Part.MeasUnit = _dbContext.MeasUnits.FirstOrDefault(x => x.MeasUnitID == _Part.MeasUnitID);
                    CustOrderPart _custOrderPart = new CustOrderPart()
                    {
                        CustOrderPartId = _itemPart.OrderPartID,
                        category = _Part.Category.Name,
                        partID = _itemPart.PartID + "",
                        Image = _Part.Image,
                        Number = "0",
                        Description = _Part.Description,
                        Price = _itemPart.PriceID,
                        Comments = _itemPart.Comments,
                        Quantity = _itemPart.Quantity,
                        MeaUnit = _Part.MeasUnit,
                        Weight = _Part.Weight,
                        Files = _itemPart.Files
                    };

                    _custOrderPartList.Add(_custOrderPart);
                }


            }
            // Paging filtered data.
            // Paging is rather manual due to in-memmory (IEnumerable) data.
            var orderColums = request.Columns.Where(x => x.Sort != null);


            // Response creation. To create your response you need to reference your request, to avoid
            // request/response tampering and to ensure response will be correctly created.
            var response = DataTablesResponse.Create(request, _custOrderPartList.Count(), _custOrderPartList.Count(), _custOrderPartList);

            // Easier way is to return a new 'DataTablesJsonResult', which will automatically convert your
            // response to a json-compatible content, so DataTables can read it when received.
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult AttachPartWithOrder(IDataTablesRequest request, int PartsId, int custOrderID)
        {
            List<CustOrderPart> _custOrderPartList = new List<CustOrderPart>();

            if (PartsId > 0 && custOrderID > 0)
            {
                _dbContext.Configuration.LazyLoadingEnabled = false;
                _dbContext.Configuration.ProxyCreationEnabled = false;

                try
                {
                    #region attaching with customer order

                    CustOrder cust = _dbContext.CustOrders.Include("Parts").FirstOrDefault(n => n.CustOrderID == custOrderID);
                    var partAttach = cust.Parts.FirstOrDefault(n => n.PartID == PartsId);

                    // List<OrderPart> _orderParts = _dbContext.OrderParts.Where(n => n.CustOrders..ToString())).ToList<OrderPart>();


                    if (partAttach == null || partAttach.PartID < 1)
                    {
                        //  var data = _dbContext.Parts.ToList();
                        // Part _Part = data.FirstOrDefault(_item => _item.PartID == PartsId);




                        cust.Parts.Add(new OrderPart()
                        {
                            PartID = PartsId,
                            PriceID = -1,
                            Quantity = 0,
                            Comments = ""

                        });

                        _dbContext.SaveChanges();
                        var OrderedId = cust.Parts.FirstOrDefault(n => n.PartID == PartsId);

                        return Json(new { status = true, OrderPartId = OrderedId.OrderPartID });
                    }
                    else
                    {

                        return Json(new { status = false });
                    }


                    #endregion
                }
                catch (DbEntityValidationException e)
                {
                    foreach (var eve in e.EntityValidationErrors)
                    {
                        // For testing purpose, consoling the bug, we will explicitly handle this exception later
                        Console.WriteLine("Entity of type \"{0}\" in state \"{1}\" has the following validation errors:",
                            eve.Entry.Entity.GetType().Name, eve.Entry.State);
                        foreach (var ve in eve.ValidationErrors)
                        {
                            Console.WriteLine("- Property: \"{0}\", Error: \"{1}\"",
                                ve.PropertyName, ve.ErrorMessage);
                        }
                    }

                }

            }
            return Json(new { status = false });
        }

        public ActionResult CompareOrder(int? id)
        {

            if (id != null && id > 0)
            {
                CompareOrderViewModel custOrderPartList = new CompareOrderViewModel();
                _dbContext.Configuration.LazyLoadingEnabled = false;
                _dbContext.Configuration.ProxyCreationEnabled = false;
                var tagsList = _dbContext.Tags.Include("OrderParts").Where(n => n.OrderID == id);
                foreach (var tag in tagsList)
                {
                    var orderparts = tag.OrderParts;
                    foreach (var orderPart in orderparts)
                    {
                        var part = _dbContext.Parts.FirstOrDefault(n => n.PartID == orderPart.PartID);
                        var custOrderPart = GenerateCompareOrderViewModel(tag, orderPart, part, "", "");
                        custOrderPartList.PartsDetail.Add(custOrderPart);

                        var custOrder = _dbContext.CustOrders.Include("Employee").FirstOrDefault(n => n.CustOrderID == id); ;
                        custOrderPartList.OrderNo = custOrder.CustOrderID;
                        custOrderPartList.Employee = custOrder.Employee.FirstName + ' ' + custOrder.Employee.LastName;
                        var FilesLIst = custOrder.Files.ToList<DataAccess.Models.File>();
                        custOrderPartList.Files = getFilesDetails(custOrder.CustOrderID);

                    }
                }
                return View(custOrderPartList);
            }
            else
            {
                return RedirectToAction("Dashboard", "Order");
            }

        }

        /// <summary>
        /// This method returns the Customer Order data by its id for Review.
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns> //todo remove
        public ActionResult OrderReview_old(int? id)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;


            if (id != null && id > 0)
            {
                OrderReviewViewModel viewModel = new OrderReviewViewModel();
                CompareOrderViewModel custOrderPartList = new CompareOrderViewModel();

                viewModel.EmployeeDropdown = GenerateEmployeesDropdown(_dbContext.Employees.ToList());
                viewModel.Currencies = _dbContext.Currencies.ToList();

                #region Customer information
                var custOrder = _dbContext.CustOrders.Include("Customer").FirstOrDefault(x => x.CustOrderID == id);
                if (custOrder != null)
                {
                    viewModel.Order = custOrder;
                    viewModel.CustOrderId = custOrder.CustOrderID;
                    custOrder.Customer.CustOrders = null;  // removing circular dependency
                    var orderCustomer = _dbContext.Customers.Include("CustomerContacts").Include("CustomerCarriers").FirstOrDefault(x => x.CustomerID == custOrder.CustomerID);
                    if (orderCustomer != null)
                    {
                        viewModel.Customer = orderCustomer;
                        viewModel.CustomerContactId = orderCustomer.CustomerID;
                        viewModel.ContactDropdown = GenerateCustomerContactsDropdown(orderCustomer.CustomerContacts.ToList());
                        viewModel.Carriers = orderCustomer.CustomerCarriers.ToList();
                    }
                }
                #endregion
                double totalprice = 0;
                #region Tag information

                var tagsList = _dbContext.Tags.Include("OrderParts").Where(n => n.OrderID == id);
                viewModel.Tags = tagsList.ToList();
                foreach (var tag in tagsList)
                {
                    var orderparts = tag.OrderParts;
                    foreach (var orderPart in orderparts)
                    {
                        var part = _dbContext.Parts.FirstOrDefault(n => n.PartID == orderPart.PartID);

                        var fileName = "";
                        var files = orderPart.Files.ToList();
                        if (files.Count > 0)
                        {
                            // here we will be selecting only first file because we can add only a single file against an order part
                            fileName = files[0].Name;
                        }
                        var measureUnit = "";
                        if (part != null)
                        {
                            var unit = _dbContext.MeasUnits.FirstOrDefault(x => x.MeasUnitID == part.MeasUnitID);
                            if (unit != null)
                            {
                                measureUnit = unit.ShortDescription;
                            }
                            totalprice += part.PriceID;
                        }
                        var custOrderPart = GenerateCompareOrderViewModel(tag, orderPart, part, fileName, measureUnit);
                        custOrderPartList.PartsDetail.Add(custOrderPart);
                    }
                }
                #endregion

                #region Pricing Cad
                bool gstneed = custOrder.Customer.GSTExempt;
                bool pstneed = custOrder.Customer.PSTExempt;
                double DekSmartDiscount = 0;

                double GSTrate = Double.Parse(ConfigurationManager.AppSettings["GST"].ToString());
                double PSTrate = Double.Parse(ConfigurationManager.AppSettings["PST"].ToString());
                viewModel.PriceCad = new PricingCADModel()
                {
                    GST = (custOrder.Customer.GSTExempt) ? totalprice * (GSTrate / 100) : 0,
                    PST = (custOrder.Customer.PSTExempt) ? totalprice * (PSTrate / 100) : 0,
                    PriceTotal = totalprice,
                    PriceOrderDate = DateTime.Now.ToShortDateString(),
                    Dicsount = DekSmartDiscount,
                    SubTotal = totalprice - DekSmartDiscount
                };
                #endregion

                viewModel.OrderParts = custOrderPartList;

                return View(viewModel);
            }
            else
            {
                return RedirectToAction("Dashboard", "Order");
            }

        }
        public ActionResult OrderReview(int? id)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;


            if (id != null && id > 0)
            {
                OrderReviewViewModel viewModel = new OrderReviewViewModel();
                CompareOrderViewModel custOrderPartList = new CompareOrderViewModel();
                
                viewModel.Currencies = _dbContext.Currencies.ToList();



                #region Customer information
                var custOrder = _dbContext.CustOrders.Include("Customer").FirstOrDefault(x => x.CustOrderID == id);
                if (custOrder != null)
                {
                    if (custOrder.State == (int)OrderStates.Review)
                    {
                        viewModel.EmployeeDropdown = GenerateEmployeesDropdown(_dbContext.Employees.ToList());

                    }
                    if (custOrder.State == (int)OrderStates.Approved)
                    {
                        var approvalEmployee = _dbContext.Employees.FirstOrDefault(n => n.EmployeeID == custOrder.ApproverID);
                        viewModel.ApprovarName = approvalEmployee.FirstName + " " + approvalEmployee.LastName;

                    }
                    if (custOrder.State == (int)OrderStates.Quote)
                    {

                    }
                    if (custOrder.State == (int)OrderStates.Shipping)
                    {

                    }
                    if (custOrder.State == (int)OrderStates.WorkOrder)
                    {

                    }
                    if (custOrder.State == (int)OrderStates.Invoiced)
                    {

                    }
                    if (custOrder.State == (int)OrderStates.FinalInvoice)
                    {

                    }

                    viewModel.StateUpdatedOn = custOrder.StateUpdatedOn.GetValueOrDefault().ToShortDateString();

                    viewModel.Order = custOrder;
                    viewModel.CustOrderId = custOrder.CustOrderID;
                    custOrder.Customer.CustOrders = null;  // removing circular dependency
                    var orderCustomer = _dbContext.Customers.Include("CustomerContacts").Include("CustomerCarriers").FirstOrDefault(x => x.CustomerID == custOrder.CustomerID);
                    if (orderCustomer != null)
                    {
                        viewModel.Customer = orderCustomer;
                        viewModel.CustomerContactId = orderCustomer.CustomerID;
                        viewModel.ContactDropdown = GenerateCustomerContactsDropdown(orderCustomer.CustomerContacts.ToList());
                        viewModel.Carriers = orderCustomer.CustomerCarriers.ToList();
                    }
                }
                #endregion
                double totalprice = 0;
                #region Tag information

                var tagsList = _dbContext.Tags.Include("OrderParts").Where(n => n.OrderID == id);
                viewModel.Tags = tagsList.ToList();
                foreach (var tag in tagsList)
                {
                    var orderparts = tag.OrderParts;
                    foreach (var orderPart in orderparts)
                    {
                        var part = _dbContext.Parts.FirstOrDefault(n => n.PartID == orderPart.PartID);

                        var fileName = "";
                        var files = orderPart.Files.ToList();
                        if (files.Count > 0)
                        {
                            // here we will be selecting only first file because we can add only a single file against an order part
                            fileName = files[0].Name;
                        }
                        var measureUnit = "";
                        if (part != null)
                        {
                            var unit = _dbContext.MeasUnits.FirstOrDefault(x => x.MeasUnitID == part.MeasUnitID);
                            if (unit != null)
                            {
                                measureUnit = unit.ShortDescription;
                            }
                            totalprice += part.PriceID;
                        }
                        var custOrderPart = GenerateCompareOrderViewModel(tag, orderPart, part, fileName, measureUnit);
                        custOrderPartList.PartsDetail.Add(custOrderPart);
                    }
                }
                #endregion

                #region Pricing Cad
                bool gstneed = custOrder.Customer.GSTExempt;
                bool pstneed = custOrder.Customer.PSTExempt;
                double DekSmartDiscount = 0;

                double GSTrate = Double.Parse(ConfigurationManager.AppSettings["GST"].ToString());
                double PSTrate = Double.Parse(ConfigurationManager.AppSettings["PST"].ToString());
                viewModel.PriceCad = new PricingCADModel()
                {
                    GST = (custOrder.Customer.GSTExempt) ? totalprice * (GSTrate / 100) : 0,
                    PST = (custOrder.Customer.PSTExempt) ? totalprice * (PSTrate / 100) : 0,
                    PriceTotal = totalprice,
                    PriceOrderDate = DateTime.Now.ToShortDateString(),
                    Dicsount = DekSmartDiscount,
                    SubTotal = totalprice - DekSmartDiscount
                };
                #endregion

                viewModel.OrderParts = custOrderPartList;

                return View(viewModel);
            }
            else
            {
                return RedirectToAction("Dashboard", "Order");
            }

        }
        /// <summary>
        /// This function returns an object of CompareOrderVM that is used to create lists in grids for OrderReview and CompareOrder
        /// </summary>
        /// <param name="tag"></param>
        /// <param name="orderPart"></param>
        /// <param name="part"></param>
        /// <param name="fileName"></param>
        /// <param name="measureUnit"></param>
        /// <returns></returns>
        public CompareOrderTagModel GenerateCompareOrderViewModel(Tag tag, OrderPart orderPart, Part part, string fileName, string measureUnit)
        {
            var coVm = new CompareOrderTagModel
            {
                Tag = tag.TagName,
                Profile = "",
                Colour = "",
                Group = "",
                PartId = part?.PartID ?? default(int),
                PartName = part?.Name ?? String.Empty,
                Custom = false,
                Comment = orderPart.Comments,
                Quantity = orderPart.Quantity,
                FileName = fileName,
                Total = part?.PriceID ?? default(int),
                Weight = part?.Weight ?? default(double),
                MeasureUnit = measureUnit

            };

            return coVm;
        }

        public JsonResult SaveShippingPartFromOrder(string quantity, string comments, int orderId, int partId)
        {
            var status = true;
            return Json(status, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public ActionResult GetItems(string searchTerm, int pageSize, int pageNum, string Category, int subCategory)
        {
            //Get the paged results and the total count of the results for this query. 

            var data = _dbContext.Parts;

            List<Part> PartsList = new List<Part>();



            #region 'Check for, sub category must be of selected category'

            IQueryable<Part> PartsListFilter = new List<Part>() as IQueryable<Part>;

            bool partsExists = false;

            if (!(Category.Equals("All") || Category.Equals("Recommended")))
            {
                var catObj = _dbContext.Categories.FirstOrDefault(n => n.Name.Equals(Category));
                int parentCatId = (catObj != null) ? catObj.CategoryID : -1;
                if (parentCatId > 0)
                {
                    var partsCategories = _dbContext.Categories.Where(n => n.CategoryParentID == parentCatId);

                    PartsListFilter = (from part in data
                                       join cat in partsCategories
                                       on part.CategoryID equals cat.CategoryID

                                       select part);
                    partsExists = true;
                }
            }
            if (!partsExists)
            {
                PartsListFilter = (from part in data
                                   select part);

            }

            #endregion


            if (subCategory > 0)
            {

                PartsList = PartsListFilter.Where(_item => _item.CategoryID == subCategory && _item.Name.ToLower().Contains(searchTerm.ToLower()))
                    .OrderBy(m => m.Name).Skip(pageNum).Take(pageSize).ToList<Part>();
            }
            else
            {
                PartsList = PartsListFilter.Where(_item => _item.Name.ToLower().Contains(searchTerm.ToLower()))
                    .OrderBy(m => m.Name).Skip(pageNum).Take(pageSize).ToList<Part>();
            }

            int attendeeCount = PartsList.Count();

            //Translate the attendees into a format the select2 dropdown expects
            Select2PagedResult pagedAttendees = AttendeesToSelect2Format(PartsList, attendeeCount);
            //Return the data as a jsonp result
            return new JsonResult
            {
                Data = pagedAttendees,
                JsonRequestBehavior = JsonRequestBehavior.AllowGet
            };
        }

        private Select2PagedResult AttendeesToSelect2Format(List<Part> parts, int totalAttendees)
        {
            Select2PagedResult jsonAttendees = new Select2PagedResult();
            jsonAttendees.Results = new List<Select2Result>();

            //Loop through our attendees and translate it into a text value and an id for the select list
            foreach (Part item in parts)
            {
                jsonAttendees.Results.Add(new Select2Result { id = item.PartID.ToString(), text = item.Name });
            }
            //Set the total count of the results from the query.
            jsonAttendees.Total = totalAttendees;

            return jsonAttendees;
        }

        public ActionResult Dashboard(int? customerId)
        {
            var Company = _dbContext.Customers.Select(n => n.Company).ToList();
            Company = Company.Where(s => !string.IsNullOrWhiteSpace(s)).Distinct().ToList();
            Company.Sort();
            OrderDashboardViewModel model = new OrderDashboardViewModel()
            {
                CustomerId = customerId.GetValueOrDefault(-1),
                Company = Company
            };

            return View(model);
        }

        public async Task<ActionResult> ViewCustomerOrder(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Dashboard", "Order");

            }
            var customer = await _dbContext.CustOrders.FindAsync(id);

            return RedirectToAction("Dashboard", "Order", new { customerId = id });
        }

        public ActionResult ShippingTagDetails()
        {
            return View();
        }
        //todo remove this
        public ActionResult OrderReviewApproved(int? id)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;


            if (id != null && id > 0)
            {
                OrderReviewViewModel viewModel = new OrderReviewViewModel();
                CompareOrderViewModel custOrderPartList = new CompareOrderViewModel();

                viewModel.Currencies = _dbContext.Currencies.ToList();

                #region Customer information
                var custOrder = _dbContext.CustOrders.Include("Customer").FirstOrDefault(x => x.CustOrderID == id);
                if (custOrder != null)
                {
                    viewModel.Order = custOrder;
                    viewModel.CustOrderId = custOrder.CustOrderID;
                    custOrder.Customer.CustOrders = null;  // removing circular dependency
                    var orderCustomer = _dbContext.Customers.Include("CustomerContacts").Include("CustomerCarriers").FirstOrDefault(x => x.CustomerID == custOrder.CustomerID);
                    if (orderCustomer != null)
                    {
                        viewModel.Customer = orderCustomer;
                        viewModel.CustomerContactId = orderCustomer.CustomerID;
                        viewModel.ContactDropdown = GenerateCustomerContactsDropdown(orderCustomer.CustomerContacts.ToList());
                        viewModel.Carriers = orderCustomer.CustomerCarriers.ToList();
                    }

                    viewModel.StateUpdatedOn = custOrder.StateUpdatedOn.GetValueOrDefault().ToShortDateString();
                    var approvalEmployee = _dbContext.Employees.FirstOrDefault(n => n.EmployeeID == custOrder.ApproverID);
                    viewModel.ApprovarName = approvalEmployee.FirstName + " " + approvalEmployee.LastName;
                }
                #endregion



                double totalprice = 0;
                #region Tag information

                var tagsList = _dbContext.Tags.Include("OrderParts").Where(n => n.OrderID == id);
                viewModel.Tags = tagsList.ToList();
                foreach (var tag in tagsList)
                {
                    var orderparts = tag.OrderParts;
                    foreach (var orderPart in orderparts)
                    {
                        var part = _dbContext.Parts.FirstOrDefault(n => n.PartID == orderPart.PartID);

                        var fileName = "";
                        var files = orderPart.Files.ToList();
                        if (files.Count > 0)
                        {
                            // here we will be selecting only first file because we can add only a single file against an order part
                            fileName = files[0].Name;
                        }
                        var measureUnit = "";
                        if (part != null)
                        {
                            var unit = _dbContext.MeasUnits.FirstOrDefault(x => x.MeasUnitID == part.MeasUnitID);
                            if (unit != null)
                            {
                                measureUnit = unit.ShortDescription;
                            }
                            totalprice += part.PriceID;
                        }
                        var custOrderPart = GenerateCompareOrderViewModel(tag, orderPart, part, fileName, measureUnit);
                        custOrderPartList.PartsDetail.Add(custOrderPart);
                    }
                }
                #endregion

                #region Pricing Cad
                bool gstneed = custOrder.Customer.GSTExempt;
                bool pstneed = custOrder.Customer.PSTExempt;
                double DekSmartDiscount = 0;

                double GSTrate = Double.Parse(ConfigurationManager.AppSettings["GST"].ToString());
                double PSTrate = Double.Parse(ConfigurationManager.AppSettings["PST"].ToString());
                viewModel.PriceCad = new PricingCADModel()
                {
                    GST = (custOrder.Customer.GSTExempt) ? totalprice * (GSTrate / 100) : 0,
                    PST = (custOrder.Customer.PSTExempt) ? totalprice * (PSTrate / 100) : 0,
                    PriceTotal = totalprice,
                    PriceOrderDate = DateTime.Now.ToShortDateString(),
                    Dicsount = DekSmartDiscount,
                    SubTotal = totalprice - DekSmartDiscount
                };
                #endregion

                viewModel.OrderParts = custOrderPartList;

                return View(viewModel);
            }
            else
            {
                return RedirectToAction("Dashboard", "Order");
            }
        }

        #region JSON Methods
        /// <summary>
        /// This method will add an entry in the OrderPartTag table when a user adds any orderpart in any tag
        /// </summary>
        /// <param name="partId"></param>
        /// <param name="tagId"></param>
        /// <returns></returns>
        public JsonResult SaveOrderPartInOrderPartTag(int partId, int tagId,int custOrderId)
        {
            bool status = false;
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;

            var custOrder = _dbContext.CustOrders.Include("Parts").FirstOrDefault(n => n.CustOrderID == custOrderId);
            if (custOrder != null)
            {
                var orderPart= custOrder.Parts.FirstOrDefault(x => x.PartID == partId);
                if (orderPart != null && tagId > 0)
                {
                    try
                    {
                        Tag tag = _dbContext.Tags.FirstOrDefault(n => n.TagID == tagId);
                        orderPart.Tags.Add(tag);
                        _dbContext.SaveChanges();
                        status = true;
                    }
                    catch (Exception e)
                    {
                        status = false;
                    }

                }
            }


                
           

            return Json(status, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult UpdateOrderState(int custOrderId, string State)
        {
            var status = true;
            if (custOrderId > 0 && !string.IsNullOrEmpty(State))
            {
                var custOrder = _dbContext.CustOrders.FirstOrDefault(x => x.CustOrderID == custOrderId);
                if (custOrder != null)
                {
                    if (State.Equals("Draft"))
                    {
                        custOrder.State = (int)OrderStates.Draft;
                    }
                    else if (State.Equals("Primary"))
                    {
                        custOrder.State = (int)OrderStates.Primary;
                    }
                    else if (State.Equals("Secondary"))
                    {
                        custOrder.State = (int)OrderStates.Secondary;
                    }
                    else if (State.Equals("Review"))
                    {
                        custOrder.State = (int)OrderStates.Review;
                    }
                    else if (State.Equals("Failed"))
                    {
                        custOrder.State = (int)OrderStates.Failed;
                    }
                    else if (State.Equals("Approved"))
                    {
                        custOrder.State = (int)OrderStates.Approved;
                    }
                    else if (State.Equals("Quote"))
                    {
                        custOrder.State = (int)OrderStates.Quote;
                    }
                    else if (State.Equals("Shipping"))
                    {
                        custOrder.State = (int)OrderStates.Shipping;
                    }
                    else if (State.Equals("WorkOrder"))
                    {
                        custOrder.State = (int)OrderStates.WorkOrder;
                    }
                    else if (State.Equals("Invoiced"))
                    {
                        custOrder.State = (int)OrderStates.Invoiced;
                    }
                    else if (State.Equals("FinalInvoice"))
                    {
                        custOrder.State = (int)OrderStates.FinalInvoice;
                    }
                    custOrder.StateUpdatedOn = DateTime.UtcNow;

                }
                try
                {
                    _dbContext.SaveChanges();
                }
                catch (Exception)
                {

                    status = false;
                }

            }
            return Json(status);
        }

        /// <summary>
        /// This method updates the Quantity in an Order part when the quantity changes in Order part grid in Order Details.
        /// </summary>
        /// <param name="quantity"></param>
        /// <param name="orderPartId"></param>
        /// <returns></returns>
        public JsonResult UpdateQuantityOrderPart(float quantity, int orderPartId)
        {
            var status = true;
            if (orderPartId > 0)
            {
                _dbContext.Configuration.LazyLoadingEnabled = false;   //property is used to set the lazy loading behavior of related objects
                _dbContext.Configuration.ProxyCreationEnabled = false;
                var data = _dbContext.OrderParts.FirstOrDefault(x => x.OrderPartID == orderPartId);
                try
                {
                    if (data != null)
                    {
                        data.Quantity = quantity;
                        _dbContext.SaveChanges();
                    }
                }
                catch (Exception e)
                {
                    status = false;
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }


        /// <summary>
        /// This function saves quantity and comments for an order part in the database
        /// </summary>
        /// <param name="quantity"></param>
        /// <param name="comment"></param>
        /// <param name="orderPartId"></param>
        /// <returns></returns>
        public JsonResult SaveQuantityAndCommentsByOrderPartId(int quantity, string comment, int orderPartId)
        {
            var status = true;
            if (orderPartId > 0)
            {
                _dbContext.Configuration.LazyLoadingEnabled = false;   //property is used to set the lazy loading behavior of related objects
                _dbContext.Configuration.ProxyCreationEnabled = false;
                var data = _dbContext.OrderParts.FirstOrDefault(x => x.OrderPartID == orderPartId);
                try
                {
                    if (data != null)
                    {
                        data.Comments = comment;
                        data.Quantity = quantity;
                        _dbContext.SaveChanges();
                    }
                }
                catch (Exception e)
                {
                    status = false;
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// This function adds a tag against a customer order in the database when the tag is added on the view
        /// </summary>
        /// <param name="custOrderId"></param>
        /// <param name="tagName"></param>
        /// <param name="shipmentId"></param>
        /// <returns></returns>
        public JsonResult AddNewTagInOrder(int custOrderId, string tagName, int shipmentId)
        {
            var status = true;
            var tagId = 0;
            var message = "";
            if (custOrderId > 0)
            {
                var custOrder = _dbContext.CustOrders.FirstOrDefault(x => x.CustOrderID == custOrderId);
                if (custOrder != null)
                {
                    // if custOrder is not null, this means custOrder exists against custOrderId, now we can add tag
                    // but there can only be one tag with unique same so putting this check below to ensure it
                    var flag = _dbContext.Tags.Any(x => x.TagName.ToLower() == tagName.ToLower());
                    if (!flag)
                    {
                        var tag = new Tag()
                        {
                            TagName = tagName,
                            OrderID = custOrderId,
                            ShipmentID = null
                        };
                        try
                        {
                            _dbContext.Tags.Add(tag);
                            _dbContext.SaveChanges();
                            tagId = tag.TagID;
                        }
                        catch (Exception e)
                        {
                            status = false;
                        }
                    }
                    else
                    {
                        status = false;
                        message = "Tag with this name already exists!";
                    }
                }
            }
            return Json(new { status, tagId, message }, JsonRequestBehavior.AllowGet);
        }


        /// <summary>
        /// This method will delete a part that was added in any tag by the user
        /// </summary>
        /// <param name="partId"></param>
        /// <param name="tagId"></param>
        /// <returns></returns>
        public JsonResult DeletePartFromOrderTag(int partId, int tagId)
        {
            var status = false;
            if (partId > 0)
            {
                var orderPart = _dbContext.OrderParts.FirstOrDefault(x => x.PartID == partId);
                if (orderPart != null && tagId > 0)
                {
                    //if orderPart is not null, this means orderPart exists against partId
                    try
                    {
                        var tab = orderPart.Tags.FirstOrDefault(x => x.TagID == tagId);
                        orderPart.Tags.Remove(tab);
                        _dbContext.SaveChanges();
                        status = true;
                    }
                    catch (Exception e)
                    {
                        status = false;
                    }
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// This method returns all the tags added for an order
        /// </summary>
        /// <param name="custOrderId"></param>
        /// <returns></returns>
        public JsonResult GetAllTagsByOrderId(int custOrderId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            if (custOrderId > 0)
            {
                var tags = _dbContext.Tags.Include("OrderParts").Where(x => x.OrderID == custOrderId).ToList();
                foreach (var tagObj in tags)
                {
                    if (tagObj.OrderParts != null)
                    {
                        foreach (var orderPartObj in tagObj.OrderParts)
                        {
                            if (orderPartObj != null)
                            {
                                var part = _dbContext.Parts.FirstOrDefault(x => x.PartID == orderPartObj.PartID);
                                if (part != null)
                                {
                                    orderPartObj.Part = part;
                                    orderPartObj.Part.OrderParts = null;   // removing circular dependency
                                }
                                orderPartObj.Tags = null;  // removing circular dependency
                            }
                        }
                    }
                }
                return Json(tags, JsonRequestBehavior.AllowGet);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// This method updates the state of a customer order by its id
        /// </summary>
        /// <param name="approverId"> This param is of Employee who approves the order</param>
        /// <param name="poNumber"></param>
        /// <param name="custOrderId">Order id against which states is updated</param>
        /// <returns></returns>
        public JsonResult ApproveOrder(int approverId, string poNumber, int custOrderId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var status = false;
            if (custOrderId > 0)
            {
                var custOrder = _dbContext.CustOrders.FirstOrDefault(x => x.CustOrderID == custOrderId);
                if (custOrder != null)
                {
                    try
                    {
                        custOrder.ApproverID = approverId;
                        custOrder.PONum = poNumber;
                        custOrder.State = (int)OrderStates.Approved;
                        custOrder.StateUpdatedOn = DateTime.UtcNow;
                        _dbContext.SaveChanges();
                        status = true;
                    }
                    catch (Exception e)
                    {
                        status = false;
                    }
                }
            }
            return Json(status, JsonRequestBehavior.AllowGet);
        }

        #endregion
        public JsonResult CheckAllOrderPartsAreAddedToTag(int custOrderId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            List<int> orderPartIdsList = new List<int>();  // this list contains ids that are part of any of the tags
            List<int> custOrderPartIdsList = new List<int>();  // this list contains ids that are added in the order
            if (custOrderId > 0)
            {
                var custOrder = _dbContext.CustOrders.Include("Parts").FirstOrDefault(n => n.CustOrderID == custOrderId);
                if (custOrder != null)
                {
                    custOrderPartIdsList.AddRange(custOrder.Parts.Select(orderPart => orderPart.OrderPartID));
                }

                var tagsList = _dbContext.Tags.Include("OrderParts").Where(n => n.OrderID == custOrderId);
                foreach (var tag in tagsList)
                {
                    var orderparts = tag.OrderParts;
                    foreach (var orderPart in orderparts)
                    {
                        if (orderPart != null)
                        {
                            orderPartIdsList.Add(orderPart.OrderPartID);
                        }
                    }
                }
                // here we are checking the difference between lists which are in custOrderPartList but not in orderPartList
                // if there is any difference, status will be false
                var status = !custOrderPartIdsList.Except(orderPartIdsList).Any();
                return Json(status, JsonRequestBehavior.AllowGet);
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }
        #region compare Order
        public JsonResult getCompareOrderInfo(int custOrderId)
        {
            var status = true;
            if (custOrderId > 0)
            {
                var OrderInfo = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == custOrderId);
                _dbContext.Tags.Where(n => n.OrderID == custOrderId);
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region Common Utility Methods
        public List<CustomerContactDropdown> GenerateCustomerContactsDropdown(List<CustomerContact> list)
        {
            var listToReturn = new List<CustomerContactDropdown>();
            if (list.Count > 0)
            {
                foreach (var contact in list)
                {
                    var obj = new CustomerContactDropdown();
                    obj.ContactId = contact.CustomerID;
                    obj.Name = contact.First + " " + contact.Last;
                    listToReturn.Add(obj);
                }
            }
            return listToReturn;
        }

        public List<EmployeeDropdown> GenerateEmployeesDropdown(List<Employee> list)
        {
            var listToReturn = new List<EmployeeDropdown>();
            if (list.Count > 0)
            {
                foreach (var employee in list)
                {
                    var obj = new EmployeeDropdown();
                    obj.EmployeeId = employee.EmployeeID;
                    obj.Name = employee.FirstName + " " + employee.LastName;
                    listToReturn.Add(obj);
                }
            }
            return listToReturn;
        }
        #endregion
    }
}
