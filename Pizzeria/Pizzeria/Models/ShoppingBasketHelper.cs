using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pizzeria.Models
{
    public class ShoppingBasketHelper
    {
        public  void  AddToBasket(Item  item,int quantity) 
     {
         var basketItem = new BasketItem
         {
             ItemId=item.ItemId,
             Count = quantity,
             Item = item
         };
         if (HttpContext.Current.Session["BASKETSESSION"] == null)
         {
             
             List<BasketItem> coll = new System.Collections.Generic.List<BasketItem>();
             coll.Add(basketItem);
             HttpContext.Current.Session["BASKETSESSION"] = coll;
         }
         else
         {
             Boolean flag=false;
            
             List<BasketItem> currentItem = (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
             foreach (BasketItem element in currentItem.ToList())
             {

                 if (element.ItemId == item.ItemId)
                 {

                     flag = true;
                     element.Count += quantity;
                     break;
                 }
                
             }
             if (flag == false)
             {
                 
                currentItem.Add(basketItem);
             }
                
         }
}

   public int RemoveFromBasket(int itemId)
        {

            List<BasketItem> currentItem = (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
           foreach(BasketItem element in currentItem.ToList()){
               if (element.ItemId == itemId)
                   currentItem.Remove(element);
           }
           return currentItem.Count();
        }

   public void ClearBasket()
   {
       List<BasketItem> currentItem = (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
       if (currentItem != null)
       {
           currentItem.Clear();
       }
   }
             public Boolean CheckBasket()
        {
            List<BasketItem> currentItem = (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
            if (currentItem != null)
            {
                if (currentItem.Count == 0)
                    return false;
                else
                    return true;
            }
            else {
                return false;
            }
        }
        public int GetBasketCount()
        {
            List<BasketItem> currentItem = (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
            if (currentItem!=null)
            {
            return currentItem.Count();
        }
            return 0;
        
        }

        public List<BasketItem> GetCartItems()
        {
             List<BasketItem> currentItem = (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
             if (currentItem != null){
            return (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
        }
             return null;
        }
        public  decimal  GetTotal() 
{ 
            decimal totalCount=0.0M;

    List<BasketItem> currentItem = (List<BasketItem>)HttpContext.Current.Session["BASKETSESSION"];
    if (currentItem == null) {
        return 0.0M;
    }
    foreach (BasketItem element in currentItem)
    {
        decimal price = element.Item.ItemPrice;
        int count = element.Count;
        totalCount += price * count;
    
    }
return totalCount;
}


        public decimal getDiscountedPrice(String promoCode, decimal price)

        { 
            decimal discountedPrice=0.0M;
        System.Collections.Generic.IEnumerable<System.Xml.Linq.XElement> discounts;
         System.Xml.Linq.XDocument xmlDoc = System.Xml.Linq.XDocument.Load(System.Web.HttpContext.Current.Server.MapPath("~/PromoCode/PromoCode.xml"));
        discounts=from c in xmlDoc.Descendants("Discount") select c;


            Boolean flag=false;
            foreach (var entry in discounts)
            {
                string code = entry.Element("PromoCode").Value;
                if (string.Equals(code, promoCode, StringComparison.OrdinalIgnoreCase) == true)
                {
                    decimal discount =Convert.ToDecimal(entry.Element("DiscountPercentage").Value)/100;
                    discountedPrice=price-(price*discount);
                    flag = true;
                    break; 
                }
            }
            if (flag == false)
            {
                discountedPrice = price;
                
            }
            return discountedPrice;
        }

        public void endShoppingSession()
        {
           HttpContext.Current.Session.Clear();
           HttpContext.Current.Session.Abandon();
         
        }

    }
}