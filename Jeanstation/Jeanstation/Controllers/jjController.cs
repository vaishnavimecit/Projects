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
    public class jjController : Controller
    {
        private JeansDbContext db = new JeansDbContext();

        //
        // GET: /jj/

        public ActionResult Index()
        {
            var jeanses = db.Jeanses.Include(j => j.Jeanscategory);
            return View(jeanses.ToList());
        }

        //
        // GET: /jj/Details/5

        public ActionResult Details(long id = 0)
        {
            Jeans jeans = db.Jeanses.Find(id);
            if (jeans == null)
            {
                return HttpNotFound();
            }
            return View(jeans);
        }

        //
        // GET: /jj/Create

        public ActionResult Create()
        {
            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory");
            return View();
        }

        //
        // POST: /jj/Create

        [HttpPost]
        public ActionResult Create(Jeans jeans)
        {
            if (ModelState.IsValid)
            {
                db.Jeanses.Add(jeans);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", jeans.JeansCategoryID);
            return View(jeans);
        }

        //
        // GET: /jj/Edit/5

        public ActionResult Edit(long id = 0)
        {
            Jeans jeans = db.Jeanses.Find(id);
            if (jeans == null)
            {
                return HttpNotFound();
            }
            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", jeans.JeansCategoryID);
            return View(jeans);
        }

        //
        // POST: /jj/Edit/5

        [HttpPost]
        public ActionResult Edit(Jeans jeans)
        {
            if (ModelState.IsValid)
            {
                db.Entry(jeans).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.JeansCategoryID = new SelectList(db.JeansCategories, "JeansCategoryID", "strCategory", jeans.JeansCategoryID);
            return View(jeans);
        }

        //
        // GET: /jj/Delete/5

        public ActionResult Delete(long id = 0)
        {
            Jeans jeans = db.Jeanses.Find(id);
            if (jeans == null)
            {
                return HttpNotFound();
            }
            return View(jeans);
        }

        //
        // POST: /jj/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(long id)
        {
            Jeans jeans = db.Jeanses.Find(id);
            db.Jeanses.Remove(jeans);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}