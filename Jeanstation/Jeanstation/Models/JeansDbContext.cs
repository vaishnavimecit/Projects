using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Jeanstation.Models
{
    public class JeansDbContext:DbContext
    {
        public JeansDbContext()
            : base("JeansDbContext")
        {
        }

        public DbSet<Jeans> Jeanses { get; set; }
        public DbSet<JeansCategory> JeansCategories { get; set; }
//public DbSet<JeansCategory> Jeans { get; set; }
        public DbSet<Feedback> Feedbacks { get; set; }
   
    }
}
   