

namespace Jeanstation.Migrations
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using System.Web;
    using System.Web.Security;
    using WebMatrix.WebData;

    internal sealed class Configuration : DbMigrationsConfiguration<Jeanstation.Models.JeansDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
            AutomaticMigrationDataLossAllowed = true;
        }

        protected override void Seed(Jeanstation.Models.JeansDbContext context)
        {
            SeedMembership();
            context.JeansCategories.AddOrUpdate(m => m.strCategory, new Models.JeansCategory { strCategory = "Men's Jeans" }, new Models.JeansCategory { strCategory = "Women's Jeans" }, new Models.JeansCategory { strCategory = "Men's Casual & Party Shirts" }, new Models.JeansCategory { strCategory = "Men's T-Shirts" }, new Models.JeansCategory { strCategory = "Women's Tops" }, new Models.JeansCategory { strCategory = "Baby Boy's Jeans" }, new Models.JeansCategory { strCategory = "Baby Girl's Jeans" });

            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data. E.g.
            //
            //    context.People.AddOrUpdate(
            //      p => p.FullName,
            //      new Person { FullName = "Andrew Peters" },
            //      new Person { FullName = "Brice Lambson" },
            //      new Person { FullName = "Rowan Miller" }
            //    );
            //
        }
        private void SeedMembership()
        {
            WebSecurity.InitializeDatabaseConnection("DefaultConnection", "UserProfile", "UserId", "UserName", autoCreateTables: true);

            var roles = (SimpleRoleProvider)Roles.Provider;
            var membership = (SimpleMembershipProvider)Membership.Provider;


            if (!roles.RoleExists("Admin"))
            {
                roles.CreateRole("Admin");
            }


            if (membership.GetUser("Administrator", false) == null)
            {
                membership.CreateUserAndAccount("Administrator", "admin@123");
            }

            if (!roles.GetRolesForUser("Administrator").Contains("Admin"))
            {
                roles.AddUsersToRoles(new[] { "Administrator" }, new[] { "admin" });

            }
        }

    }
}
