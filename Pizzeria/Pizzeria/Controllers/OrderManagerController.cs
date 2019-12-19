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
    public class OrderManagerController : Controller
    {
        private PizzeriaDBContext db = new PizzeriaDBContext();

        //
        // GET: /OrderManager/

        public ActionResult Index()
        {
            var orders = from a in db.Orders where a.OrderStatus == "Undelivered" select a;
            return View(orders.ToList());
        }

        public ActionResult UpdateDeliveryStatus(int id)
        {
            Order order = db.Orders.Find(id);
            order.OrderStatus = "Delivered";
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