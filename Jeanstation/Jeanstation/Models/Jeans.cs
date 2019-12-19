using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Jeanstation.Models
{

    public class Jeans
    {
        public JeansCategory JeansCategory;
        public long ID { get; set; }
        public string Jeans_Name { get; set; }

        public string Details { get; set; }
        public int Price { get; set; }

        public virtual JeansCategory Jeanscategory { get; set; }

        public int JeansCategoryID { get; set; }

    }
}