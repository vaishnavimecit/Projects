using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace Jeanstation.Models
{
    public class JeansCategory
    {
        public int JeansCategoryID { get; set; }
        [System.ComponentModel.DataAnnotations.Display(Name = "Category")]
        public string strCategory { get; set; }
        //Navigational property
        public virtual ICollection<Jeans> jeanses { get; set; }
    }
}