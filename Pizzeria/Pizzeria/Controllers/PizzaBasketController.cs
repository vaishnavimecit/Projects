using Pizzeria.Models;
using Pizzeria.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Pizzeria.Controllers
{
    public class PizzaBasketController : Controller
    {
        private PizzeriaDBContext db = new PizzeriaDBContext();
        //
        // GET: /PizzaBasket/

        public ActionResult Index()
        {
            ShoppingBasketHelper helper=new ShoppingBasketHelper();

            //  Set  up  our  ViewModel 
            var viewModel = new ShoppingBasketViewModel
            {
                BasketItems = helper.GetCartItems(),
                BasketTotal = helper.GetTotal()
            };

            //  Return  the  view 
            return View(viewModel); 

          
        }
        public ActionResult AddToCart(string id, string quantity)
        {
            ShoppingBasketHelper helper = new ShoppingBasketHelper();
            int intId = Convert.ToInt32(id);
            int intQty = Convert.ToInt32(quantity);
            var addedPizza = db.Items.Single(item => item.ItemId == intId);
            helper.AddToBasket(addedPizza, intQty);
            return RedirectToAction("Index");
           
        } 
      
public  ActionResult  RemoveFromCart(int  id) 
{ 

             ShoppingBasketHelper helper = new ShoppingBasketHelper();

//  Get  the  name  of  the  album  to  display  confirmation 

            string  itemName  =  db.Items 
.Single(item  =>  item.ItemId ==  id).ItemName; 

//  Remove  from  cart 
            int itemCount = helper.RemoveFromBasket(id);

//  Display  the  confirmation  message 
var  results  =  new  ShoppingBasketRemoveViewModel 
{ 
Message  =  Server.HtmlEncode(itemName)  + "  has  been  removed  from  your  shopping  cart.", 
BasketTotal  =  helper.GetTotal(), 
BasketCount  =  helper.GetBasketCount(), 
DeleteId  =  id 
}; 
return RedirectToAction("Index");
}
public ActionResult ClearCart()
{
    ShoppingBasketHelper helper = new ShoppingBasketHelper();
    helper.ClearBasket();
    return RedirectToAction("Index");
}

        [ChildActionOnly]
        public ActionResult BasketSummary()
        {
            ShoppingBasketHelper helper = new ShoppingBasketHelper();
            ViewData["BasketCount"] = helper.GetBasketCount();
            return PartialView("BasketSummary");
        }

      
    }
}
