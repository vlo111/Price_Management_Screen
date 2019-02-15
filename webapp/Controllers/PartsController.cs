using DataAccess;
using System.Threading.Tasks;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DataAccess.Models;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.IO;
using System.Net;
using CenDek.Models;
using CenDek.Helpers;
using System.Runtime.Caching;
using System.Diagnostics;
using System.Data.Entity.Core.Objects;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core.Metadata.Edm;
using CenDek.Models.Parts;
using System.Data.Entity.SqlServer;
using System.Data.Entity.Validation;
using System.Threading;

namespace CenDek.Controllers
{
    public class PartsController : Controller
    {
        private CenDekContext db = new CenDekContext();
        private static Image Image = new Image();
        private static List<Models.FileTmp> listFiles = new List<Models.FileTmp>();
        private static List<DataAccess.Models.File> listSelectedFiles = new List<DataAccess.Models.File>();
        private static List<int> selRowIds = new List<int>();
        public static Dictionary<int, string> temp_listIds = new Dictionary<int, string>();
        private static object Lock = new object();

        // GET: Parts
        public ActionResult Index()
        {

            ViewBag.ProductLineID = new SelectList(db.ProductLines, "ProductLineID", "Name");
            ViewBag.MeasUnitID = new SelectList(db.MeasUnits, "MeasUnitID", "ShortDescription");

            ViewBag.PartStatusID = new SelectList(db.PartStatus, "PartStatusID", "Status");
            ViewBag.CostCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");
            ViewBag.SellCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");
            var customer = db.CustomerContacts.GroupBy(p => p.First).Select(p => new { name = p.Key }).ToList();
            ViewBag.CustomerID = new SelectList(customer, "name", "name");


            if (Session["TmpModel"] != null)
            {
                var modelErrors = (ModelStateDictionary)Session["TmpModel"];

                foreach (ModelState modelState in modelErrors.Values)
                {
                    foreach (ModelError error in modelState.Errors)
                    {
                        if (error.ErrorMessage == "Required field Start Date" || error.ErrorMessage == "Required field End Date" || error.ErrorMessage == "Required field Cost" || error.ErrorMessage == "Required field Sell")
                        {
                            ModelState.AddModelError("ReviewErrors", "The Price is invalid");
                        }
                        else
                        {
                            ModelState.AddModelError("PartErrors", error.ErrorMessage);
                        }
                    }
                }

            }
            return View();
        }
        // POST: Parts/Create
        [HttpPost, ActionName("Index")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> PartCreate(
            [Bind(Include = "PartID,CategoryID,AltPart,Name,Description,ProductLineID,PartStatusID,CustomFlag,Comments,ModifiedDate,Weight,Height,Width,Length,MeasUnitID,PartInventoryID")] Part part,
            [Bind(Include = "PartID,DateCreated,CostValue,CostCurrencyID,SellValue,SellCurrencyID,EmployeeID")] Price price,
            string CategoryName, string startdate, string finishdate)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    price.PriceID = new Random().Next();
                    var date = DateTime.Today;
                    part.Files = listSelectedFiles;
                    if (Image != null)
                    {
                        if (!string.IsNullOrEmpty(Image.Name))
                        {
                            part.Image = Image;
                            part.ImageID = Image.ImageID;
                        }
                    }
                    part.PartID = new Random().Next();
                    part.PriceID = price.PriceID;
                    part.CreatedDate = date;
                    part.EmployeeID = 1;
                    part.ModifiedDate = date;
                    part.CategoryID = db.Categories.Where(n => n.Name == CategoryName).Select(i => i.CategoryID).FirstOrDefault();
                    part.Category = db.Categories.Where(cat => cat.Name == CategoryName).FirstOrDefault();
                    part.MeasUnit = db.MeasUnits.Where(p => p.MeasUnitID == part.MeasUnitID).FirstOrDefault();
                    db.Parts.Add(part);

                    await db.SaveChangesAsync();


                    price.PartID = part.PartID;
                    price.EmployeeID = 1;
                    price.DateCreated = date;
                    price.ValidStart = DateTime.ParseExact(startdate, "dd.MM.yyyy",
                                       System.Globalization.CultureInfo.InvariantCulture);
                    price.ValidEnd = DateTime.ParseExact(finishdate, "dd.MM.yyyy",
                                       System.Globalization.CultureInfo.InvariantCulture);
                    db.Prices.Add(price);
                    await db.SaveChangesAsync();

                    ViewBag.ProductLineID = new SelectList(db.ProductLines, "ProductLineID", "Name");
                    ViewBag.MeasUnitID = new SelectList(db.MeasUnits, "MeasUnitID", "ShortDescription");
                    ViewBag.PartStatusID = new SelectList(db.PartStatus, "PartStatusID", "Status");
                    ViewBag.CostCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");
                    ViewBag.SellCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");
                    var cust = (from p in db.CustomerContacts
                                select new { id = p.CustomerID, name = p.First }).Distinct();

                    ViewBag.CustomerID = new SelectList(cust, "id", "name");

                    foreach (var item in listFiles)
                    {
                        string filePath = Path.Combine(Server.MapPath(@"~/Images/WallFiles/filepath"), item.Name + '.' + item.Type);

                        if (System.IO.File.Exists(filePath))
                        {
                            System.IO.File.Delete(filePath);
                        }
                    }
                    string imagePath = Path.Combine(Server.MapPath(@"~/Images/WallImages/imagepath"), Image.Name + '.' + Image.Ext);

                    if (System.IO.File.Exists(imagePath))
                    {
                        System.IO.File.Delete(imagePath);
                    }
                    listFiles.Clear();
                    listSelectedFiles.Clear();

                    return View("Index");
                }
                else
                {
                    Session["TmpModel"] = ViewData.ModelState;
                    return View("Index");
                }
            }
            catch (Exception e)
            {
                var s = e.Message;
            }

            return View("Index");
        }
        // GET: CategoryCreate
        public ActionResult CategoryCreate()
        {

            ViewBag.CategoryParentID = new SelectList(GetCategoriesParents(), "CategoryID", "Name");
            return View();
        }
        // POST: Parts/CategoryCreate
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> CategoryCreate([Bind(Include = "Name, CategoryParentID")] Category category)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (category != null)
                    {
                        try
                        {
                            category.CategoryID = new Random().Next();
                            db.Categories.Add(category);
                            await db.SaveChangesAsync();

                        }
                        catch (Exception e)
                        {

                            return Json(new { warning = e.Message });
                        }
                    }
                    else
                    {
                        return Json(new { warning = "category is null" });
                    }
                }
                else
                {
                    return Json(new { warning = "model is not valid" });
                }
            }
            catch (Exception e)
            {
                ModelState.AddModelError("", e.Message);
                return View(category);
            }

            return RedirectToAction("Index", "Parts");
        }
        // GET: CurrencyCreate
        public ActionResult CurrencyCreate()
        {
            return View();
        }
        // POST: Parts/CurrencyCreate
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> CurrencyCreate([Bind(Include = "Code,Name")] Currency currency)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (currency != null)
                    {
                        db.Currencies.Add(currency);
                        await db.SaveChangesAsync();
                    }
                    else
                    {
                        return Json(new { warning = "currency is null" });
                    }
                }
                else
                {
                    return Json(new { warning = "model is not valid" });
                }
            }
            catch (Exception e)
            {
                ModelState.AddModelError("", e.Message);
                return View(currency);
            }
            return RedirectToAction("Index", "Parts");
        }
        // GET: MeasUnitCreate
        public ActionResult MeasUnitCreate()
        {
            return View();
        }
        // POST: Parts/MeasUnitCreate
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> MeasUnitCreate([Bind(Include = "ShortDescription, LongDescription")] MeasUnit measUnit)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (measUnit != null)
                    {
                        db.MeasUnits.Add(measUnit);
                        await db.SaveChangesAsync();
                    }
                    else
                    {
                        return Json(new { warning = "status is null" });
                    }
                }
                else
                {
                    return Json(new { warning = "model is not valid" });
                }
            }
            catch (Exception e)
            {
                ModelState.AddModelError("", e.Message);
                return View(measUnit);
            }
            return RedirectToAction("Index", "Parts");
        }
        // GET: ProductLine
        public ActionResult ProductLineCreate()
        {
            return View();
        }
        // POST: Parts/ProductLineCreate
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> ProductLineCreate([Bind(Include = "Name, Description")] ProductLine productLine)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (productLine != null)
                    {
                        db.ProductLines.Add(productLine);
                        await db.SaveChangesAsync();
                    }
                    else
                    {
                        return Json(new { warning = "ProductLines is null" });
                    }
                }
                else
                {
                    return Json(new { warning = "model is not valid" });
                }
            }
            catch (Exception e)
            {
                ModelState.AddModelError("", e.Message);
                return View(productLine);
            }
            return RedirectToAction("Index", "Parts");
        }
        // GET: StatusCreate
        public ActionResult StatusCreate()
        {
            return View();
        }
        // POST: Parts/StatusCreate
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> StatusCreate([Bind(Include = "Status")] PartStatu partStatu)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    if (partStatu != null)
                    {
                        partStatu.PartStatusID = new Random().Next();
                        db.PartStatus.Add(partStatu);
                        await db.SaveChangesAsync();
                    }
                    else
                    {
                        return Json(new { warning = "status is null" });
                    }
                }
                else
                {
                    return Json(new { warning = "model is not valid" });
                }
            }
            catch (Exception e)
            {
                return Json(new { warning = e.Message });
            }
            return RedirectToAction("Index", "Parts");
        }

        /// <summary>
        /// This method saves the image for each click on the «Image_ Dropzone»
        /// </summary>
        public PartialViewResult SelectedImageView()
        {
            bool isSavedSuccessfully = true;
            string fName = "";
            var image = new Image();
            try
            {
                foreach (string fileName in Request.Files)
                {
                    HttpPostedFileBase file = Request.Files[fileName];
                    //Save file content goes here
                    fName = file.FileName;

                    List<string> extensions = new List<string>() { ".gif", ".png", ".jpg" };
                    string extension = Path.GetExtension(fName);

                    if (extensions.Contains(extension))
                    {

                        if (file != null && file.ContentLength > 0)
                        {
                            int size = 2 * 1024 * 1024;
                            if (file.ContentLength <= size)
                            {
                                var originalDirectory = new DirectoryInfo(string.Format("{0}Images\\WallImages", Server.MapPath(@"\")));

                                string pathString = System.IO.Path.Combine(originalDirectory.ToString(), "imagepath");

                                var fileName1 = Path.GetFileName(file.FileName);

                                bool isExists = System.IO.Directory.Exists(pathString);

                                if (!isExists)
                                    System.IO.Directory.CreateDirectory(pathString);

                                var path = string.Format("{0}\\{1}", pathString, file.FileName);
                                file.SaveAs(path);

                                BinaryReader b = new BinaryReader(file.InputStream);
                                byte[] binData = b.ReadBytes((int)file.InputStream.Length);
                                image = new Image { Name = fileName1.Remove(fileName1.Length - 4), Ext = extension.Replace(".", ""), Image1 = binData };
                                db.Images.Add(image);
                                db.SaveChanges();
                                Image = image;
                            }
                            else
                            {
                                //ViewBag.Message = "Maximum allowed file size is 2 mb";
                            }
                        }
                    }
                    else
                    {
                        //ViewBag.Message = "Error. Valid file extensions - '.png', '.jpg', '.gif'";
                    }
                }

            }
            catch (Exception)
            {
                isSavedSuccessfully = false;
            }

            if (isSavedSuccessfully)
            {
                ViewBag.success = fName;
            }
            else
            {
                ViewBag.Message = "Error in saving file";
            }
            if (Image != null)
                return PartialView("Partial_Views/_ImageView", !string.IsNullOrEmpty(Image.Name) ? Image : null);
            else
                return PartialView("Partial_Views/_ImageView");
        }
        /// <summary>
        /// This method deletes the image, when for deletion press the button from «Image_ Dropzone» or «_ImageView»
        /// </summary>
        /// <param name="ImageID"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        [HttpPost]
        public async Task<ActionResult> DeleteImageFromImageViewOrDropzone(int? ImageID, string name)
        {
            if (Image != null)
            {
                try
                {
                    db.Images.Remove(db.Images.Where(n => n.ImageID == Image.ImageID).FirstOrDefault());
                    Image = null;
                    await db.SaveChangesAsync();
                }
                catch (Exception)
                {
                }
            }
            return PartialView("Partial_Views/_ImageView", Image);
        }
        /// <summary>
        /// This method saves files for each click on the «File_ Dropzone»
        /// </summary>
        public PartialViewResult SelectedFilesView()
        {
            bool isSavedSuccessfully = true;
            string fName = "";
            try
            {
                foreach (string fileName in Request.Files)
                {
                    HttpPostedFileBase file = Request.Files[fileName];
                    //Save file content goes here
                    fName = file.FileName;

                    List<string> extensions = new List<string>() { ".gif", ".png", ".jpg", ".txt", ".pdf" };
                    string extension = Path.GetExtension(fName);

                    if (extensions.Contains(extension))
                    {

                        if (file != null && file.ContentLength > 0)
                        {
                            int size = 5 * 1024 * 1024;
                            if (file.ContentLength <= size)
                            {
                                var originalDirectory = new DirectoryInfo(string.Format("{0}Images\\WallFiles", Server.MapPath(@"\")));

                                string pathString = System.IO.Path.Combine(originalDirectory.ToString(), "filepath");

                                var fileName1 = Path.GetFileName(file.FileName);

                                bool isExists = System.IO.Directory.Exists(pathString);

                                if (!isExists)
                                    System.IO.Directory.CreateDirectory(pathString);

                                var path = string.Format("{0}\\{1}", pathString, file.FileName);
                                file.SaveAs(path);

                                BinaryReader b = new BinaryReader(file.InputStream);
                                byte[] binData = b.ReadBytes((int)file.InputStream.Length);
                                string name = "";
                                if (extension.Length == 4)
                                {
                                    name = fileName1.Remove(fileName1.Length - 4);
                                }
                                else if (extension.Length == 5)
                                {
                                    name = fileName1.Remove(fileName1.Length - 5);
                                }
                                listFiles.Add(new Models.FileTmp { ID = new Random().Next(), Name = name, Type = extension.Replace(".", ""), Contents = binData });
                                db.SaveChanges();
                                ViewBag.DocumentTypeID = new SelectList(db.DocumentTypes, "DocumentTypeID", "Name");
                            }
                            else
                            {
                                //ViewBag.Message = "Maximum allowed file size is 5 mb";
                            }
                        }
                    }
                    else
                    {
                        //ViewBag.Message = "Error. Valid file extensions - '.png', '.jpg', '.gif', '.pdf','.txt'";
                    }
                }

            }
            catch (Exception)
            {
                isSavedSuccessfully = false;
            }


            if (isSavedSuccessfully)
            {
                ViewBag.success = fName;
            }
            else
            {
                ViewBag.Message = "Error in saving file";
            }

            return PartialView("Partial_Views/_FilesHome", listFiles.Count != 0 ? listFiles : null);
        }
        /// <summary>
        /// This method deletes files, when for deletion press the button from «File_ Dropzone» or «_FilesView»
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <returns></returns>
        public ActionResult DeleteFilesFromDropzoneOrFilesView(string name, int? id)
        {
            var list = listFiles.Find(i => i.Name == name);
            if (list != null)
            {
                listFiles.Remove(list);
                if (listSelectedFiles.Find(i => i.Name == name) != null)
                {
                    listSelectedFiles.Remove(listSelectedFiles.Find(i => i.Name == name));
                }
                return PartialView("Partial_Views/_FilesHome", listFiles);
            }
            else if (id != null)
            {
                var file = listFiles.Where(p => p.ID == id).FirstOrDefault();
                var selectedfile = listSelectedFiles.Find(i => i.Name == file.Name);
                if (file != null)
                {
                    listFiles.Remove(file);
                }
                else
                {
                    return Json(new { warning = "file not found" });
                }
                if (selectedfile != null)
                {
                    listSelectedFiles.Remove(selectedfile);
                }
                return PartialView("Partial_Views/_FilesHome", listFiles);
            }
            else
            {
                return Json(new { warning = "Files is not valid" }); ;
            }
        }
        // GET: SaveFile
        [HttpGet]
        public ActionResult SaveFile(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DataAccess.Models.File file = new DataAccess.Models.File();
            var filetmp = listFiles.Where(p => p.ID == id).FirstOrDefault();
            if (filetmp != null)
            {
                file.FileID = filetmp.ID;
                file.Name = filetmp.Name;
                file.Type = filetmp.Type;
            }

            ViewBag.DocumentTypeID = new SelectList(db.DocumentTypes, "DocumentTypeID", "Name", file?.DocumentTypeID);
            return PartialView("Partial_Views/_FilesSaved", file);
        }
        // POST: File/Save
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SaveFile(DataAccess.Models.File file)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var filetmp = listFiles.Where(p => p.ID == file.FileID).FirstOrDefault();
                    if (filetmp != null)
                    {
                        listSelectedFiles.Add(new DataAccess.Models.File { Name = filetmp.Name, Type = filetmp.Type, Contents = filetmp.Contents, DocumentTypeID = file.DocumentTypeID, EmployeeID = file.EmployeeID });
                    }
                    else
                    {
                        return Json(new { warning = "file not found" });
                    }
                }
                else
                {
                    return Json(new { warning = "model is not valid" });
                }
            }
            catch (Exception e)
            {
                ModelState.AddModelError("", e.Message);
                return View(file);
            }
            return PartialView("Partial_Views/_FilesSelected", listSelectedFiles);
        }

        public ActionResult Refresh()
        {
            return PartialView("Partial_Views/_FilesSelected", listSelectedFiles);
        }
        private List<Category> GetCategoriesParents()
        {
            var parents = db.Categories.Where(c => c.CategoryParentID == 0).OrderBy(a => a.Name);
            List<Category> child = new List<Category>();
            foreach (var parent in parents)
            {
                foreach (var item in db.Categories.Where(x => x.CategoryParentID == parent.CategoryID))
                {
                    child.Add(item);
                }
            }
            return child;
        }
        /// <summary>
        /// Builds a JQGrid table! Sort, Pagination and Filter search
        /// </summary>
        /// <param name="sidx"></param>
        /// <param name="sord"></param>
        /// <param name="page"></param>
        /// <param name="rows"></param>
        /// <param name="searchPart"></param>
        /// <param name="startdate1"></param>
        /// <param name="finishdate1"></param>
        /// <param name="Currency"></param>
        /// <param name="Customer"></param>
        /// <returns></returns>
        public JsonResult GetJqGridValues(string sidx, string sord, int page, int rows,
            string searchPart, string startdate1, string finishdate1, string Currency, string Customer)
        {
            // Data Caching : class - ListPTable
            #region Cache Manager

            if (!MemoryCache.Default.Contains("CacheKey"))
            {
                var list = new List<ListPTable>();

                var price = db.Prices.AsNoTracking().ToList();
                var AltPart = db.AltPart.AsNoTracking().ToList();
                var CategoryName = db.Categories.AsNoTracking().ToList();
                var CustomerName = db.CustomerContacts.AsNoTracking().ToList();
                foreach (var part in db.Parts)
                {
                    var listPTable = new ListPTable
                    {
                        PartID = part.PartID,
                        DateCreated = part.CreatedDate,
                        Description = part.Description,
                        PartNo = part.PartPrimary
                    };
                    foreach (var categoryName in CategoryName)
                    {
                        if (categoryName.CategoryID == part.CategoryID)
                        {
                            listPTable.CategoryName = categoryName.Name;
                            break;
                        }
                    }
                    foreach (var customerName in CustomerName)
                    {
                        if (customerName.CustomerID == part.CustomerID)
                        {
                            listPTable.CustomerName = customerName.First;
                            break;
                        }
                    }
                    foreach (var prc in price)
                    {
                        if (prc.PriceID == part.PriceID)
                        {
                            listPTable.ValidStart = prc.ValidStart;
                            listPTable.ValidEnd = prc.ValidEnd;
                            listPTable.Sell = prc.SellValue;
                            listPTable.Cost = prc.CostValue;
                            listPTable.CurrencyID = prc.Currency1.CurrencyID;
                            listPTable.CurrencyName = prc.Currency1.Name;
                            break;
                        }
                    }
                    list.Add(listPTable);
                }
                CacheManager.List = list;
            }
            #endregion
            var Results = (CacheManager.List as List<ListPTable>).Select(a => new
            {
                a.PartID,
                a.PartNo,
                a.CategoryName,
                a.Description,
                a.Sell,
                a.Cost,
                a.ValidStart,
                a.ValidEnd,
                a.DateCreated,
                a.CurrencyID,
                a.CurrencyName,
                a.CustomerName
            });
            // Filter of Part
            #region Search  
            if (!string.IsNullOrEmpty(searchPart))
            {
                var PartID = Convert.ToInt32(searchPart);
                Results = Results.ToList().Where(p => p.PartID == PartID);
            }

            if (!string.IsNullOrEmpty(Customer))
            {
                var CurrencyID = Convert.ToInt32(Currency);
                var currency = Results.Where(p => p.CurrencyID == CurrencyID).ToList();
                if (Customer == " All") { Results = currency; }
                else
                {
                    var customer = currency.Where(p => p.CustomerName == Customer);
                    if (customer.Count() > 0)
                        Results = customer;
                    else
                    {
                        var AllResCustomer = Results.Where(p => p.CustomerName == Customer);
                        if (AllResCustomer.Count() != 0)
                        {
                            var tmp = 0;
                            foreach (var item in AllResCustomer)
                            {
                                var price = db.Prices.Where(p => p.PartID == item.PartID).FirstOrDefault();
                                if (price != null)
                                {
                                    price.Currency1 = db.Currencies.Where(p => p.CurrencyID == CurrencyID).FirstOrDefault();
                                    db.Entry(price).State = System.Data.Entity.EntityState.Modified;
                                    db.SaveChanges();
                                    var list = (CacheManager.List as List<ListPTable>).Where(p => p.PartID == item.PartID).FirstOrDefault();
                                    list.CurrencyID = price.Currency1.CurrencyID;
                                    list.CurrencyName = price.Currency1.Name;
                                    tmp++;
                                }
                            }
                            if (tmp > 0)
                                Results = Results.Where(p => p.CustomerName == Customer).Where(p => p.CurrencyID == CurrencyID);
                        }
                        else
                            Results = customer;
                    }
                }
            }

            if (!string.IsNullOrEmpty(startdate1))
                Results = Results.Where(p => p.ValidStart == DateTime.Parse(startdate1));
            if (!string.IsNullOrEmpty(finishdate1))
                Results = Results.Where(p => p.ValidEnd == DateTime.Parse(finishdate1));
            #endregion
            // Pagination in jqgrid
            #region Page 
            int pageIndex = Convert.ToInt32(page) - 1;
            int pageSize = rows;
            int totalRecords = Results.Count();
            var totalPages = (int)Math.Ceiling(totalRecords / (float)rows);
            #endregion
            // Sort a rows of Part Table
            #region order by  
            switch (sidx.ToLower())
            {
                case "orderby_partno":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.PartNo);
                    else
                        Results = Results.OrderByDescending(d => d.PartNo);
                    break;
                case "orderby_categoryname":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.CategoryName);
                    else
                        Results = Results.OrderByDescending(d => d.CategoryName);
                    break;
                case "orderby_description":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.Description);
                    else
                        Results = Results.OrderByDescending(d => d.Description);
                    break;
                case "orderby_start":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.ValidStart);
                    else
                        Results = Results.OrderByDescending(d => d.ValidStart);
                    break;
                case "orderby_end":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.ValidEnd);
                    else
                        Results = Results.OrderByDescending(d => d.ValidEnd);
                    break;
                case "orderby_dcreated":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.DateCreated);
                    else
                        Results = Results.OrderByDescending(d => d.DateCreated);
                    break;
                case "orderby_cost":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.Cost);
                    else
                        Results = Results.OrderByDescending(d => d.Cost);
                    break;
                case "orderby_sell":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.Sell);
                    else
                        Results = Results.OrderByDescending(d => d.Sell);
                    break;
                case "orderby_currencyname":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.CurrencyName);
                    else
                        Results = Results.OrderByDescending(d => d.CurrencyName);
                    break;
                case "orderby_customername":
                    if (sord.ToLower() == "asc")
                        Results = Results.OrderBy(d => d.CustomerName);
                    else
                        Results = Results.OrderByDescending(d => d.CustomerName);
                    break;

                default:
                    Results = Results.OrderBy(d => d.PartNo);
                    break;
            }
            #endregion
            Results = Results.Skip(pageIndex * pageSize).Take(pageSize);

            var jsonData = new
            {
                total = totalPages,
                page,
                records = totalRecords,
                rows = Results
            };
            return Json(jsonData, JsonRequestBehavior.AllowGet);
        }
        [HttpGet]
        public PartialViewResult Edit()
        {
            if (selRowIds != null)
                selRowIds = null;
            return PartialView("PriceManagement/_Edit");
        }
        /// <summary>
        /// Multiple Editing 
        /// </summary>
        /// <param name="values"></param>
        /// <param name="editList"></param>
        ///        Fields values : 0-radio buttons Date
        ///                        1-value date [Datepicker]
        ///                        2-checkbox Date
        ///                        3-radio buttons Percentage Price
        ///                        4-value Percentage Price
        ///                        5-checkbox PgPrice
        ///                        6-radio buttons Fixed Price
        ///                        7-value Fixed Price
        ///                        8-checkbox Fixed Price
        /// <param name="name"></param> which buttons[Apply] is clicked
        /// <returns></returns>
        [HttpPost]
        public async Task<ActionResult> Edit(List<int> values, List<string> editList, string name)
        {
            if (values != null)
                selRowIds = values;
            else
                values = selRowIds;

            if (selRowIds == null)
            {
                return Json(new { success = false, responseText = "Please select row(s)" }, JsonRequestBehavior.AllowGet);
            }
            foreach (var partID in values)
            {
                var part = db.Parts.Where(p => p.PartID == partID).FirstOrDefault();
                if (part != null)
                {
                    var price = db.Prices.Where(p => p.PartID == partID).FirstOrDefault();
                    if (price != null)
                    {
                        if (part.MeasUnit.ShortDescription == null)
                            part.MeasUnit = db.MeasUnits.Take(1).FirstOrDefault();
                        if (part.Category.Name == null)
                            part.Category = db.Categories.Take(1).FirstOrDefault();
                        var list = (CacheManager.List as List<ListPTable>).Where(p => p.PartID == partID).FirstOrDefault();

                        if (name == "date")
                        {
                            if (editList.ElementAt(0) == "Start")
                            {
                                price.ValidStart = DateTime.ParseExact(editList.ElementAt(1), "dd.MM.yyyy", System.Globalization.CultureInfo.InvariantCulture);
                                list.ValidStart = price.ValidStart;
                            }
                            else if (editList.ElementAt(0) == "End")
                            {
                                price.ValidEnd = DateTime.ParseExact(editList.ElementAt(1), "dd.MM.yyyy", System.Globalization.CultureInfo.InvariantCulture);
                                list.ValidEnd = price.ValidEnd;
                            }
                            if (editList.ElementAt(2) == "on")
                            {
                                price.EmailCustomer = true;
                            }
                        }
                        if (name == "percentagePrice")
                        {
                            if (editList.ElementAt(3) == "PSell")
                            {
                                var sell = Convert.ToDecimal((float)price.SellValue - Convert.ToSingle(editList.ElementAt(4)) / 100F * (float)price.SellValue);
                                if (sell != list.Sell)
                                {
                                    price.SellValue = sell;
                                    list.Sell = sell;
                                }
                            }
                            else if (editList.ElementAt(3) == "PCost")
                            {
                                var cost = Convert.ToDecimal((float)price.CostValue - Convert.ToSingle(editList.ElementAt(4)) / 100F * (float)price.SellValue);
                                if (cost != list.Cost)
                                {
                                    price.CostValue = cost;
                                    list.Cost = cost;
                                }
                            }
                            if (editList.ElementAt(5) == "on")
                            {
                                price.EmailCustomer = true;
                            }
                        }
                        if (name == "FixedPrice")
                        {
                            if (editList.ElementAt(6) == "FSell")
                            {
                                var sell = Convert.ToDecimal(editList.ElementAt(7));
                                if (sell != list.Sell)
                                {
                                    price.SellValue = sell;
                                    list.Sell = sell;
                                }
                            }
                            else if (editList.ElementAt(6) == "FCost")
                            {
                                var cost = Convert.ToDecimal(editList.ElementAt(7));
                                if (cost != list.Cost)
                                {
                                    price.CostValue = cost;
                                    list.Cost = cost;
                                }
                            }
                            if (editList.ElementAt(8) == "on")
                            {
                                price.EmailCustomer = true;
                            }
                        }
                        db.Entry(price).State = System.Data.Entity.EntityState.Modified;
                        await db.SaveChangesAsync();
                    }
                    else
                    {
                        return Json(new { success = false, responseText = "There is no price on the part, PartNo - " + (CacheManager.List as List<ListPTable>).Where(p => p.PartID == partID).Select(p => p.PartNo).FirstOrDefault() }, JsonRequestBehavior.AllowGet);
                    }
                }
            }
            return Json(new { success = true, responseText = "successfully changed" }, JsonRequestBehavior.AllowGet);
            //return PartialView("PriceManagement/_Edit");
        }
        /// <summary>
        /// Multiple deleting open modal action[GET] Partial View 
        /// </summary>
        /// <param name="values"></param>
        /// <param name="DelName"></param>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Delete(List<int> values, string DelName)
        {
            try
            {
                if (DelName == null)
                    Thread.Sleep(800);
                lock (Lock)
                {
                    if (DelName == "true")
                    {
                        if (values != null)
                        {
                            if (temp_listIds.Count() != 0)
                            {
                                temp_listIds.Clear();
                            }
                            foreach (var PartID in values)
                            {
                                var part = db.Parts.Where(p => p.PartID == PartID).FirstOrDefault();
                                var PartNo = db.AltPart.Where(p => p.PartID == PartID).Select(p => p.PartNo).FirstOrDefault();
                                if (PartNo != null)
                                    temp_listIds.Add(PartID, PartNo);
                                else
                                    temp_listIds.Add(PartID, part.Name);
                            }
                            return Json(new { success = true, responseText = "" }, JsonRequestBehavior.AllowGet);
                        }
                        else
                        {
                            return Json(new { success = false, responseText = "Please select row(s)" }, JsonRequestBehavior.AllowGet);
                        }
                    }
                    if (temp_listIds.Count() == 0)
                    {
                        return PartialView("PriceManagement/_Delete");
                    }
                    else if (values == null && DelName == null)
                    {
                        return View("PriceManagement/_Delete", temp_listIds);
                    }
                }
            }
            catch (Exception e)
            {

            }
            return PartialView("PriceManagement/_Delete");
        }
        [HttpPost]
        public ActionResult Delete()
        {
            try
            {
                foreach (var partDict in temp_listIds)
                {
                    var part = db.Parts.Where(p => p.PartID == partDict.Key).FirstOrDefault();
                    if (part.MeasUnit.ShortDescription == null)
                        part.MeasUnit = db.MeasUnits.Take(1).FirstOrDefault();
                    if (part.Category.Name == null)
                        part.Category = db.Categories.Take(1).FirstOrDefault();
                    var altPart = db.AltPart.Where(p => p.PartID == partDict.Key).FirstOrDefault();
                    var price = db.Prices.Where(p => p.PartID == partDict.Key).FirstOrDefault();
                    if (price != null)
                        db.Entry(price).State = EntityState.Deleted;
                    if (altPart != null)
                        db.Entry(altPart).State = EntityState.Deleted;
                    db.Entry(part).State = EntityState.Deleted;
                    db.SaveChanges();
                    (CacheManager.List as List<ListPTable>).RemoveAll(p => p.PartID == partDict.Key);
                }
                return Json(new { success = true, responseText = "successfully deleted" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception e)
            {
                if (e.InnerException.Message != null)
                {
                    return Json(new { success = false, responseText = e.InnerException.Message }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { success = false, responseText = e.Message }, JsonRequestBehavior.AllowGet);

                }
            }

        }
        public string Delete(string id)
        {
            //try
            //{
            //    var ids = id.Split(',');
            //    foreach (var Priceid in ids)
            //    {
            //        int prID = Convert.ToInt32(Priceid);
            //        db.Prices.Remove(db.Prices.Find(prID));
            //        await db.SaveChangesAsync();
            //    }
            //}
            //catch (Exception e)
            //{

            //    return "Error : " + e.Message;
            //}
            return "Deleted successfully";
        }
        /// <summary>
        /// In filters Field Search First name or Id
        /// </summary>
        /// <param name="term"></param>
        /// <returns></returns>
        public JsonResult AutocompleteSearch(string term)
        {
            var models = new[] { new { value = 0, title = "" } }.ToList();
            foreach (var item in db.Parts)
            {
                if (Convert.ToString(item.PartID).Contains(term))
                {
                    models.Add(new { value = item.PartID, title = item.Name });
                }
                if (item.Name.Contains(term))
                {
                    models.Add(new { value = item.PartID, title = item.Name });
                }
            }

            if (string.IsNullOrEmpty(term))
            {
                var mod = (CacheManager.List as List<ListPTable>).Select(p => new { value = p.PartID }).Distinct();
                return Json(mod, JsonRequestBehavior.AllowGet);
            }
            models.RemoveAt(0);

            return Json(models, JsonRequestBehavior.AllowGet);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}