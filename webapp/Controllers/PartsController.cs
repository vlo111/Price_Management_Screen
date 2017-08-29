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

namespace CenDek.Controllers
{
    public class PartsController : Controller
    {
        private CenDekContext db = new CenDekContext();
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
        // GET: Parts
        public async Task<ActionResult> Create()
        {
            var parts = db.Parts.Include(p => p.Category).Include(p => p.Employee).Include(p => p.Image).Include(p => p.MeasUnit).Include(p => p.PartStatu).Include(p => p.ProductLine);
            return View(await parts.ToListAsync());
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "PartID,AltPartID,Name,Description,ProductLineID,PartStatusID,CustomFlag,Comments,ModifiedDate,Weight,Height,Width,Length,MeasUnitID,PartInventoryID")] Part part, [Bind(Include = "PartID,ValidStart,ValidEnd,DateCreated,CostValue,CostCurrencyID,SellValue,SellCurrencyID,EmployeeID")] Price price, string CategoryName)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    price.PriceID = new Random().Next();
                    var date = DateTime.Today;
                    part.Files = FilesController.listSelectedFiles;
                    if (ImagesController.Image != null)
                    {
                        if (!string.IsNullOrEmpty(ImagesController.Image.Name))
                        {
                            part.Image = ImagesController.Image;
                            part.ImageID = ImagesController.Image.ImageID;
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
                    db.Prices.Add(price);
                    await db.SaveChangesAsync();


                    return RedirectToAction("Index", "Parts", null);
                }
                else
                {
                    Session["TmpModel"] = ViewData.ModelState;
                    return RedirectToAction("Index", "Parts", null);
                }
            }
            catch (Exception e)
            {
                var s = e.Message;
            }

            //ViewBag.CategoryID = new SelectList(db.Categories, "CategoryID", "Name", part.CategoryID);
            //ViewBag.MeasUnitID = new SelectList(db.MeasUnits, "MeasUnitID", "ShortDescription", part.MeasUnitID);
            //ViewBag.PartStatusID = new SelectList(db.PartStatus, "PartStatusID", "Status", part.PartStatusID);
            //ViewBag.ProductLineID = new SelectList(db.ProductLines, "ProductLineID", "Name", part.ProductLineID);


            return View(part);
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