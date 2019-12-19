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
    [Authorize]
    public class FeedbackController : Controller
    {
        //
        // GET: /Registration/

        [HttpGet]
        [OutputCache(Duration = 10)]
        public ActionResult Create()
        {
            ViewBag.category = new SelectList(new[] { "Men's Jeans", "Women's Jeans", "Men's Casual & Party Shirts", "Men's T-Shirts", "Women's Tops", "Baby Boy's Jeans", "Baby Girl's Jeans" });
            return View();
        }

        [HttpPost]
        public ActionResult Create(Feedback customer)
        {
            return RedirectToAction("Thanks");
        }
        [OutputCache(Duration = 36000, Location = System.Web.UI.OutputCacheLocation.Client)]
        public ActionResult Thanks()
        {
            return View();
        }

    }
}