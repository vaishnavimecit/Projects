using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Pizzeria.Models
{
    
    public class Item
    {
        [ScaffoldColumn(false)] 
        public int ItemId{get;set;}
       [Required(ErrorMessage = "Category  is  required.")]
        public int CategoryId { get; set; }
        [DisplayName("Pizza Name")]
        [Required(ErrorMessage = "Pizza name  is  required.")]
        public string ItemName { get; set; }
        [DisplayName("Price")]
        [Required(ErrorMessage = "Price  is  required.")]
        [Range(1.00, 100.00, ErrorMessage = "Price  must  be  between  1.00  and  100.00")] 
        public decimal ItemPrice { get; set; }
        public string Ingredients { get; set; }
        [ScaffoldColumn(false)]
        [DefaultValue("/Content/Images/placeholder.jpg")]
        public string ImageLocation { get; set; }
         public Category Category { get; set; } 

    }
}