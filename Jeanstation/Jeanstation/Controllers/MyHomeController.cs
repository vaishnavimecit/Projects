using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Jeanstation.Models;

namespace Jeanstation.Controllers
{
    public class MyHomeController : Controller
    {
        //private JeansDbContext db = new JeansDbContext();

        ////
        //// GET: /MyHome/

        //public ActionResult Index()
        //{
        //    var jeanses = db.Jeanses.Include(j => j.Jeanscategory);
        //    return View(jeanses.ToList());
        //}

        ////
        //// GET: /MyHome/Details/5

        //public ActionResult Details(long id = 0)
        //{
        //    Jeans jeans = db.Jeanses.Find(id);
        //    if (jeans == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(jeans);
        //}

        ////
        //// GET: /MyHome/Create

        //public ActionResult Create()
        //{
        //    ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory");
        //    return View();
        //}

        ////
        //// POST: /MyHome/Create

        //[HttpPost]
        //public ActionResult Create(Jeans jeans)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Jeanses.Add(jeans);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", jeans.JeansCategoryID);
        //    return View(jeans);
        //}

        ////
        //// GET: /MyHome/Edit/5

        //public ActionResult Edit(long id = 0)
        //{
        //    Jeans jeans = db.Jeanses.Find(id);
        //    if (jeans == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", jeans.JeansCategoryID);
        //    return View(jeans);
        //}

        ////
        //// POST: /MyHome/Edit/5

        //[HttpPost]
        //public ActionResult Edit(Jeans jeans)
        //{
        //    if (ModelState.IsValid)
        //    {
        //        db.Entry(jeans).State = EntityState.Modified;
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }
        //    ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", jeans.JeansCategoryID);
        //    return View(jeans);
        //}

        ////
        //// GET: /MyHome/Delete/5

        //public ActionResult Delete(long id = 0)
        //{
        //    Jeans jeans = db.Jeanses.Find(id);
        //    if (jeans == null)
        //    {
        //        return HttpNotFound();
        //    }
        //    return View(jeans);
        //}

        ////
        //// POST: /MyHome/Delete/5

        //[HttpPost, ActionName("Delete")]
        //public ActionResult DeleteConfirmed(long id)
        //{
        //    Jeans jeans = db.Jeanses.Find(id);
        //    db.Jeanses.Remove(jeans);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        //}

        //protected override void Dispose(bool disposing)
        //{
        //    db.Dispose();
        //    base.Dispose(disposing);
        //}

        public ActionResult Index()
        {

            return View();
        }

        [OutputCache(Duration = 10)]

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult ChangeTheme()
        {
            ViewBag.Theme = new SelectList(new[] { "Light Pink", "Light Grey", "Light Blue","Light Green" });

            return View();
        }


        [HttpPost]
        public ActionResult ChangeTheme(string theme)
        {
            switch (theme)
            {
                case "Light Pink": Response.Cookies["cookie"].Value = "lightpink"; break;
                case "Light Grey": Response.Cookies["cookie"].Value = "lightgrey"; break;
                case "Light Blue": Response.Cookies["cookie"].Value = "lightblue"; break;
                case "Light Green": Response.Cookies["cookie"].Value = "lightgreen"; break;
                default: Response.Cookies["cookie"].Value = "white"; break;
            }

            Response.Cookies["cookie"].Expires = DateTime.Now.AddDays(2);
            return View("Index");
             
            //return View();
        }


        [ChildActionOnly]
        [OutputCache(Duration = 10)]
        public ActionResult CategoriesList()
        {

            JeansDbContext db = new JeansDbContext();
            string strResponse = "<div id=\"JeansItemsAcc\" style=\"width:200px; margin:0px; padding:0px;\">";

            foreach (var Jeanscat in db.JeansCategories.ToList<JeansCategory>())
            {
                strResponse += "<h3 style='width:100%; background-color:red; height:25px; color:white;margin:0px; padding:5px;'>" + Jeanscat.strCategory + "</h3>";
                strResponse += "<div style='width:100%; background-color:#ffcc00; height:100%;margin-left:2px; padding:0px 0px 0px 5px;'>";
                var JeansItems = db.Jeanses.Where(g => g.JeansCategoryID == Jeanscat.JeansCategoryID).ToList();
                foreach (var JeansItem in JeansItems)
                {
                    strResponse += "  <a href=\"/Jeanses/Details/" + JeansItem.ID + "\">" + JeansItem.Jeans_Name + "</a><br>";
                }
                strResponse += "</div>";
            }
            strResponse += "</div>";
            ViewBag.strResponse = strResponse;
            return PartialView();
        }

    }
}