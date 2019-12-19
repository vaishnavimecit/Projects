using Pizzeria.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Pizzeria.Controllers
{
    public class HomeController : Controller
    {
        PizzeriaDBContext db = new PizzeriaDBContext(); 
        public ActionResult Index()
        {
            var pizzas = GetItems(12);

            System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement> discounts;
         System.Xml.Linq.XDocument xmlDoc = System.Xml.Linq.XDocument.Load(System.Web.HttpContext.Current.Server.MapPath("~/PromoCode/PromoCode.xml"));
        discounts=from c in xmlDoc.Descendants("Discount") select c;
           
            foreach (var entry in discounts)
            {
                 @ViewBag.Code=entry.Element("PromoCode").Value;
                 @ViewBag.Discount=entry.Element("DiscountPercentage").Value;               
                   
            }

            return View(pizzas); 


        }


        private List<Item> GetItems(int count)
        {
            return db.Categories
            .OrderBy(a => a.Name).Take(count)
            .ToList();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Contact Us.";

            return View();
        }

   
        public ActionResult SearchOutlet(string city)
        {
        // List<String> outletPhone= new List<String>();
            String outletPhone = null;
         System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement> stores;
         System.Xml.Linq.XDocument xmlDoc = System.Xml.Linq.XDocument.Load(System.Web.HttpContext.Current.Server.MapPath("~/Outlets/Outlets.xml"));
        stores=from o in xmlDoc.Descendants("City") select o;
        Boolean flag = false;
        foreach (var entry in stores)
        {           
            string tempCity =entry.Element("Name").Value;
          
            if (string.Equals(tempCity, city, StringComparison.OrdinalIgnoreCase) == true)
            {
               
                flag = true;
                outletPhone = "Call: "+entry.Element("Phone").Value;
                break;
            }
        }
            if (flag == false) {
                outletPhone = "Sorry! No phone number of our outlet found in your city. Call the Pizzeria toll free number 555-0100.";
          
        }
        return Content(outletPhone);
        } 
    }
}
