using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Pizzeria.ViewModels
{
    public class ShoppingBasketRemoveViewModel
    {
        public string Message { get; set; }
        public decimal BasketTotal { get; set; }
        public int BasketCount { get; set; }
        public int DeleteId { get; set; }
    }
}