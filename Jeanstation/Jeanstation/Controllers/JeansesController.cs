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
    public class JeansesController : Controller
    {
        private JeansDbContext db = new JeansDbContext();
        

        public ActionResult ImportJeansItems()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ImportJeansItems(string tbFilePath)
        {
            string strResponse;
            if (!string.IsNullOrEmpty(tbFilePath))
            {
                try
                {
                    System.Xml.Linq.XDocument xmlDoc = System.Xml.Linq.XDocument.Load(tbFilePath);

                    var Jeanses = from g in xmlDoc.Descendants("Jeans")
                                select g;

                    foreach (var Jeans in Jeanses)
                    {
                        Jeans newJeans = new Jeans();
                        newJeans.Details = Jeans.Element("Details").Value;
                        newJeans.Jeans_Name = Jeans.Element("Name").Value;
                        newJeans.JeansCategoryID = Convert.ToInt32(Jeans.Element("Category").Value);
                        newJeans.Price = Convert.ToInt32(Jeans.Element("Price").Value);
                        db.Jeanses.Add(newJeans);
                        db.SaveChanges();
                    }
                    strResponse = "<font style='font-size:18pt;'><b>Jeans items added successfully in the database.</b><br><br><br></font>";
                }
                catch (System.Exception ex)
                {
                    strResponse = "<font style='font-size:18pt;color:red;'><b>Invalid file path.</b><br><br><br></font>";
                }

            }
            else
                strResponse = "<font style='font-size:18pt;color:red;'><b>Please specify a valid file path.</b><br><br><br></font>";
            ViewBag.response = strResponse;
            return View();
        }

        [HttpPost]
        public ActionResult Index(int? JeansList, int? priceRange)
        {
            IEnumerable<Jeans> dtJeanses = (IEnumerable<Jeans>)System.Runtime.Caching.MemoryCache.Default.Get("JeansList", null);

            if (dtJeanses == null)
            {
                System.Runtime.Caching.MemoryCache.Default.Add("JeansList", getJeanses(), System.DateTime.Now.AddMinutes(5), null);
                dtJeanses = (IEnumerable<Jeans>)System.Runtime.Caching.MemoryCache.Default.Get("JeansList", null);
            }

            var Jeanses = dtJeanses;



            ViewBag.JeansList = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory");
            if (JeansList != null)
            {
                Jeanses = Jeanses.Where(g => g.JeansCategoryID == JeansList);
            }
            if (priceRange != null)
            {
                switch (priceRange)
                {
                    case 1:
                        Jeanses = Jeanses.Where(g => g.Price < 500);
                        break;
                    case 2:
                        Jeanses = Jeanses.Where(g => g.Price >= 500 && g.Price <= 1000);
                        break;
                    case 3:
                        Jeanses = Jeanses.Where(g => g.Price > 1000);
                        break;
                }
            }
            return PartialView("_FilteredJeanses", Jeanses);
        }

        //
        // GET: /Jeanses/
        public IEnumerable<Jeans> getJeanses()
        {
            var Jeanses = db.Jeanses.Include(g => g.JeansCategory).ToList();
            return (Jeanses);
        }

        public ActionResult Index()
        {
            IEnumerable<Jeans> dtJeanses = (IEnumerable<Jeans>)System.Runtime.Caching.MemoryCache.Default.Get("JeansList", null);
            ViewBag.method = "get";


            if (dtJeanses == null)
            {
                System.Runtime.Caching.MemoryCache.Default.Add("JeansList", getJeanses(), System.DateTime.Now.AddMinutes(2), null);
                dtJeanses = (IEnumerable<Jeans>)System.Runtime.Caching.MemoryCache.Default.Get("JeansList", null);

                var Jeanses = dtJeanses;
                ViewBag.JeansList = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory");
                return View(Jeanses);
            }


            else
            {

                var Jeanses = dtJeanses;
                ViewBag.JeansList = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory");
                return View(Jeanses);

            }

        }

        //
        // GET: /Jeanses/Details/5

        public ActionResult Details(long id = 0)
        {
            Jeans Jeans = db.Jeanses.Find(id);
            if (Jeans == null)
            {
                return HttpNotFound();
            }
            return View(Jeans);
        }

        //
        // GET: /Jeanses/Create
        [Authorize(Roles = "Admin")]
        public ActionResult Create()
        {
            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory");
            return View();
        }

        //
        // POST: /Jeanses/Create

        [HttpPost]
        [Authorize(Roles = "Admin")]
        public ActionResult Create(Jeans Jeans)
        {
            if (ModelState.IsValid)
            {
                db.Jeanses.Add(Jeans);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", Jeans.JeansCategoryID);
            return View(Jeans);
        }

        //
        // GET: /Jeanses/Edit/5
        [Authorize(Roles = "Admin")]
        public ActionResult Edit(long id = 0)
        {
            Jeans Jeans = db.Jeanses.Find(id);
            if (Jeans == null)
            {
                return HttpNotFound();
            }
            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", Jeans.JeansCategoryID);
            return View(Jeans);
        }

        //
        // POST: /Jeanses/Edit/5

        [HttpPost]
        [Authorize(Roles = "Admin")]
        public ActionResult Edit(Jeans Jeans)
        {
            if (ModelState.IsValid)
            {
                db.Entry(Jeans).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", Jeans.JeansCategoryID);
            return View(Jeans);
        }

        //
        // GET: /Jeanses/Delete/5
        [Authorize(Roles = "Admin")]
        public ActionResult Delete(long id = 0)
        {
            Jeans Jeans = db.Jeanses.Find(id);
            if (Jeans == null)
            {
                return HttpNotFound();
            }
            return View(Jeans);
        }

        //
        // POST: /Jeanses/Delete/5
        [Authorize(Roles = "Admin")]
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(long id)
        {
            Jeans Jeans = db.Jeanses.Find(id);
            db.Jeanses.Remove(Jeans);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }


        public ActionResult ShoppingCart(int id = 0)
        {
            Jeans Jeans;
            if (id != 0)
            {
                Jeans = db.Jeanses.Find(id);
            }
            else
            {
                return View();
            }

            var Jeanses = "";


            if (Session["items"] != null)
                Jeanses = Session["Items"].ToString() + Jeans.Jeans_Name + "<br/>";
            else
            {
                Jeanses = Jeans.Jeans_Name + "<br/>";
            }


            Session["Items"] = Jeanses;

            return View();
        }

    }
}