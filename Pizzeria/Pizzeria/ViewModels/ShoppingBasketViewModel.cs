using Pizzeria.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pizzeria.ViewModels
{
    public class ShoppingBasketViewModel
    {
        public List<BasketItem> BasketItems { get; set; }
        public decimal BasketTotal { get; set; } 

    }
}