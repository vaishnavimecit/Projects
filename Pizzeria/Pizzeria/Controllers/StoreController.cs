using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pizzeria.Models;

namespace Pizzeria.Controllers
{
    public class StoreController : Controller
    {
        PizzeriaDBContext pizzeriaDBContext = new PizzeriaDBContext(); 
        //
        // GET: /Store/
        public ActionResult Index()
        {
           var categories = pizzeriaDBContext.Categories.ToList(); 
            return  View(categories);
    }

        // 
        //  GET:  /Store/Browse 
        public  ActionResult  Browse(string  category) 
{
    var categoryModel = pizzeriaDBContext.Categories.Include("Items")
        .Single(g => g.Name == category);
return  View(categoryModel); 
} 

        // 
        //  GET:  /Store/Details 
        public ActionResult Details(int id)
        {
            var album = pizzeriaDBContext.Items.Find(id);
            return View(album); 

        }


        [ChildActionOnly]
        public ActionResult CategoryMenu()
        {
            var categories = pizzeriaDBContext.Categories.ToList();
            return PartialView(categories);
        } 



    }
}
