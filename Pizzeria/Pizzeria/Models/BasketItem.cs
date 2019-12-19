using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Pizzeria.Models
{
    public class BasketItem
    {
        
        public int ItemId { get; set; }
        public int Count { get; set; }
        public virtual Item Item { get; set; }

    }
}