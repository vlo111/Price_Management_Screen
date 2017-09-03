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

namespace CenDek.Controllers
{
    public class PartsController : Controller
    {
        private CenDekContext db = new CenDekContext();
        private static Image Image = new Image();
        private static List<Models.FileTmp> listFiles = new List<Models.FileTmp>();
        private static List<DataAccess.Models.File> listSelectedFiles = new List<DataAccess.Models.File>();
        // GET: Parts
        public ActionResult Index()
        {
            ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "Name");
            ViewBag.CategoryPID = db.Categories.Where(s => s.CategoryParentID == null).OrderBy(a => a.Name);
            ViewBag.ProductLineID = new SelectList(db.ProductLines, "ProductLineID", "Name");
            ViewBag.MeasUnitID = new SelectList(db.MeasUnits, "MeasUnitID", "ShortDescription");
            ViewBag.PartStatusID = new SelectList(db.PartStatus, "PartStatusID", "Status");
            ViewBag.CostCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");
            ViewBag.SellCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");

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
        public async Task<ActionResult> PartCreate([Bind(Include = "PartID,AltPartID,Name,Description,ProductLineID,PartStatusID,CustomFlag,Comments,ModifiedDate,Weight,Height,Width,Length,MeasUnitID,PartInventoryID")] Part part,
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
                                       System.Globalization.CultureInfo.InvariantCulture); ;
                    db.Prices.Add(price);
                    await db.SaveChangesAsync();

                    ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "Name");
                    ViewBag.CategoryPID = db.Categories.Where(s => s.CategoryParentID == null).OrderBy(a => a.Name);
                    ViewBag.ProductLineID = new SelectList(db.ProductLines, "ProductLineID", "Name");
                    ViewBag.MeasUnitID = new SelectList(db.MeasUnits, "MeasUnitID", "ShortDescription");
                    ViewBag.PartStatusID = new SelectList(db.PartStatus, "PartStatusID", "Status");
                    ViewBag.CostCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");
                    ViewBag.SellCurrencyID = new SelectList(db.Currencies, "CurrencyID", "Name");

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

            return View(part);
        }
        // GET: CategoryCreate
        public ActionResult CategoryCreate()
        {
            ViewBag.CategoryParentID = new SelectList(db.Categories.Where(c => c.CategoryParentID == null).OrderBy(a => a.Name), "CategoryID", "Name");
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
                        db.Categories.Add(category);
                        await db.SaveChangesAsync();
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