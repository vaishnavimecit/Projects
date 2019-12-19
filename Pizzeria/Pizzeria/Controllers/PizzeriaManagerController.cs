using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pizzeria.Models;

namespace Pizzeria.Controllers
{
    [Authorize(Roles = "Admin")]
    public class PizzeriaManagerController : Controller
    {
        private PizzeriaDBContext db = new PizzeriaDBContext();

        //
        // GET: /PizzeriaManager/

        public ActionResult Index()
        {
            var items = db.Items.Include(i => i.Category);
            return View(items.ToList());
        }

        //
        // GET: /PizzeriaManager/Details/5

        public ActionResult Details(int id = 0)
        {
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        //
        // GET: /PizzeriaManager/Create

        public ActionResult Create()
        {
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name");
            return View();
        }

        //
        // POST: /PizzeriaManager/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Item item)
        {
            if (ModelState.IsValid)
            {
                item.ImageLocation = "/Content/Images/placeholder.jpg";
                db.Items.Add(item);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name", item.CategoryId);
            return View(item);
        }

        //
        // GET: /PizzeriaManager/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name", item.CategoryId);
            return View(item);
        }

        //
        // POST: /PizzeriaManager/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Item item)
        {
            string url = item.ImageLocation;
            if (ModelState.IsValid)
            {
                db.Entry(item).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoryId = new SelectList(db.Categories, "CategoryId", "Name", item.CategoryId);
            return View(item);
        }

        //
        // GET: /PizzeriaManager/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        //
        // POST: /PizzeriaManager/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Item item = db.Items.Find(id);
            db.Items.Remove(item);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

      public ActionResult ClearCookie()
        {
           //HttpContext.Response.Cookies.Set(new HttpCookie("cookie_name") { Value = string.Empty });
             if (this.ControllerContext.HttpContext.Request.Cookies.AllKeys.Contains(".ASPXAUTH"))
            {
                HttpCookie cookie = this.ControllerContext.HttpContext.Request.Cookies[".ASPXAUTH"];
                cookie.Expires = DateTime.Now.AddDays(-1);
                this.ControllerContext.HttpContext.Response.Cookies.Add(cookie);
            }
            return RedirectToAction("Index", "Home");
        }
        }
    }
