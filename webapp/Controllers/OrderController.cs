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
using System.IO;
using DataTables.AspNet.Core;
using DataTables.AspNet.Mvc5;
using CenDek.App_Helpers;
using System.Data.Entity.Validation;

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

        public async Task<ActionResult> View(int? id)
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
            NewCustomerOrder model = new NewCustomerOrder();

            #region dropdowns
            var dropdownVD = new SelectList(_dbContext.Carriers.Where(n => (!string.IsNullOrEmpty(n.CarrierName))).ToList(), "CarrierID", "CarrierName");
            ViewData["StudDataVD"] = dropdownVD;
            //using viewbag  
            ViewBag.dropdownVD = dropdownVD;
            ViewBag.customerList = new SelectList(_dbContext.Customers.Where(n => (!string.IsNullOrEmpty(n.Company))).ToList(), "CustomerID", "Company");
            ViewBag.coloutList = new SelectList(_dbContext.Colours.Where(n => (!string.IsNullOrEmpty(n.Name))).ToList(), "ColourID", "Name");
            ViewBag.categoriesList = GetCategoriesSelectList(0);

            #endregion
            var custOrders = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == id);
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


        private IEnumerable<SelectListItem> GetCategoriesSelectList(int CategoryParentID)
        {
            var categories = _dbContext.Categories.ToList();
            // Initialise list and add first "All" item
            List<SelectListItem> options = new List<SelectListItem>();
            // Get the top level parents
            var parents = categories.Where(x => x.CategoryParentID == CategoryParentID);
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
        public ActionResult GetCategoriest(String CategoryParentID)
        {
            var categories = _dbContext.Categories.ToList();
            // Initialise list and add first "All" item
            List<SelectListItem> options = new List<SelectListItem>();
            // Get the top level parents
            IEnumerable<Category> parents;
            if (CategoryParentID.Equals("All") || CategoryParentID.Equals("Recommended"))
            {
                parents = categories;
            }
            else
            {
                parents = categories.Where(x => x.Name == CategoryParentID);
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

        public ActionResult GetAttachments(int id)
        {
            var attachmentsList = new List<AttachmentsModel>();
            var custOrders = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == id);
            if (custOrders != null)
            {
                string imagesPath = string.Format("{0}Images\\WallImages\\imagepath", Server.MapPath(@"\"));

                var directory = new DirectoryInfo(imagesPath);

                if (!directory.Exists)
                {
                    Directory.CreateDirectory(imagesPath);
                }

                var filesFromDirectory = directory.GetFiles().ToList();  // getting all files from directory
                foreach (var dirFile in filesFromDirectory)
                {
                    var i = dirFile.Length;
                    var dirFileName = dirFile.Name;
                    foreach (var file in custOrders.Files)
                    {
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



            return Json(new { Data = attachmentsList }, JsonRequestBehavior.AllowGet);
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
        public ActionResult GetOrderParts(IDataTablesRequest request, string OrderPartsIds, int custOrderID, string Category = null)
        {
            List<CustOrderPart> _custOrderPartList = new List<CustOrderPart>();

            Category catObject = new Category();
            if (Category.Equals("All") || Category.Equals("Recommended"))
            {
                catObject = null;
            }
            else
            {
                catObject = _dbContext.Categories.FirstOrDefault(x => x.Name.Equals(Category));
            }

            if (!string.IsNullOrEmpty(OrderPartsIds) && custOrderID > 0)
            {


                _dbContext.Configuration.LazyLoadingEnabled = false;
                _dbContext.Configuration.ProxyCreationEnabled = false;

                var data = _dbContext.Parts.ToList();


                // Paging filtered data.
                // Paging is rather manual due to in-memmory (IEnumerable) data.
                var orderColums = request.Columns.Where(x => x.Sort != null);

                CustOrder cust = _dbContext.CustOrders.FirstOrDefault(n => n.CustOrderID == custOrderID);
                var t = OrderPartsIds.Split(',').ToList();
                List<OrderPart> _orderParts = _dbContext.OrderParts
                    .OrderBy(n=>n.OrderPartID)
                    .Where(n => t.Contains(n.OrderPartID.ToString()))
                    .ToList<OrderPart>();
                // Global filtering.
                // Filter is being manually applied due to in-memmory (IEnumerable) data.
                // If you want something rather easier, check IEnumerableExtensions Sample.



                foreach (var _itemPart in _orderParts)
                {
                    Part _Part = new Part();

                    if (catObject != null)
                    {
                        _Part = data.FirstOrDefault(_item => _item.PartID == _itemPart.PartID && catObject.CategoryID == _item.CategoryID);
                    }
                    else
                    {
                        _Part = data.FirstOrDefault(_item => _item.PartID == _itemPart.PartID);
                    }
                    if (_Part != null && _Part.PartID > 0)
                    {
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
                            Price = _Part.PriceID,
                            Comments = _itemPart.Comments,
                            Quantity = _itemPart.Quantity,
                            MeaUnit = _Part.MeasUnit,
                            Weight = _Part.Weight,
                            Files = _itemPart.Files
                        };

                        _custOrderPartList.Add(_custOrderPart);
                    }

                }


            }
          
           

            // Response creation. To create your response you need to reference your request, to avoid
            // request/response tampering and to ensure response will be correctly created.
            var response = DataTablesResponse.Create(request, _custOrderPartList.Count(), _custOrderPartList.Count(), _custOrderPartList);

            // Easier way is to return a new 'DataTablesJsonResult', which will automatically convert your
            // response to a json-compatible content, so DataTables can read it when received.
            return new DataTablesJsonResult(response, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetPartAgainstId(int partId)
        {
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;
            var data = _dbContext.Parts;

            // Global filtering.
            // Filter is being manually applied due to in-memmory (IEnumerable) data.
            // If you want something rather easier, check IEnumerableExtensions Sample.
            Part PartObj = new Part();


            PartObj = data.FirstOrDefault(_item => _item.PartID == partId) as Part;

            // var filteredData = data.Where(_item => _item.CategoryID == subCategory && _item.Description.Contains(request.Search.Value));

            // Easier way is to return a new 'DataTablesJsonResult', which will automatically convert your
            // response to a json-compatible content, so DataTables can read it when received.
            return new JsonResult { Data = PartObj, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
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

        public ActionResult CompareOrder()
        {
            return View();
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
            ViewBag.CustomerId = customerId == null ? -1 : customerId;
            return View();
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

        public ActionResult OrderReview()
        {
            return View();
        }

        public ActionResult ShippingTagDetails()
        {
            return View();
        }

        #region JSON Methods
        /// <summary>
        /// This method will add an entry in the OrderPartTag table when a user adds any orderpart in any tag
        /// </summary>
        /// <param name="partId"></param>
        /// <param name="tagId"></param>
        /// <returns></returns>
        public JsonResult SaveOrderPartInOrderPartTag(int partId, int tagId)
        {
            bool status = false;
            _dbContext.Configuration.LazyLoadingEnabled = false;
            _dbContext.Configuration.ProxyCreationEnabled = false;

            var orderPart = _dbContext.OrderParts.FirstOrDefault(x => x.PartID == partId);
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
            if (custOrderId > 0)
            {
                var custOrder = _dbContext.CustOrders.FirstOrDefault(x => x.CustOrderID == custOrderId);
                if (custOrder != null)
                {
                    // if custOrder is not null, this means custOrder exists against custOrderId, now we can add tag
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
            }
            return Json(new { status, tagId }, JsonRequestBehavior.AllowGet);
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


        #endregion

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
    }
}
