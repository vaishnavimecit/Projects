using Pizzeria.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Pizzeria.Controllers
{
    public class OrderController : Controller
    {
        //
        // GET: /Order/
        PizzeriaDBContext db = new PizzeriaDBContext();
        
        public ActionResult Index()
        {
            ShoppingBasketHelper helper = new ShoppingBasketHelper();
            if (helper.CheckBasket())
            {
                return View();
            }
            else return RedirectToAction("Index", "PizzaBasket");
        }
        [HttpPost]
        public ActionResult Index(FormCollection values)
        {
            var order = new Order();
            TryUpdateModel(order);
            try
            {
          
                ShoppingBasketHelper helper = new ShoppingBasketHelper();
                decimal priceAfterDiscount = helper.getDiscountedPrice(values["PromoCode"], helper.GetTotal());
                
                order.OrderDate = DateTime.Now;
                order.OrderStatus = "Undelivered";
                order.Total = priceAfterDiscount;
                db.Orders.Add(order);

                List<BasketItem> currentItem = helper.GetCartItems();
                foreach (BasketItem element in currentItem.ToList())
                {
                    var orderDetail = new OrderDetail
                   {
                       ItemId = element.ItemId,
                       OrderId = order.OrderId,
                       UnitPrice = element.Item.ItemPrice,
                       Quantity = element.Count
                   };
                    db.OrderDetails.Add(orderDetail);
                }

                db.SaveChanges();
                return RedirectToAction("Complete", new { orderId = order.OrderId, orderTotal = order.Total });

            }
            catch (DbEntityValidationException dbEx)
            {
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        Trace.TraceInformation("Property: {0} Error: {1}", validationError.PropertyName, validationError.ErrorMessage);
                    }
                }
                return View(order);
            }
        }
        public ActionResult Complete(int orderId, decimal orderTotal) {
            ShoppingBasketHelper helper = new ShoppingBasketHelper();
            helper.endShoppingSession();
            ViewBag.OrderTotal = orderTotal.ToString();
            return View(orderId);
        
        }
    }
}
