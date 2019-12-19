using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Security;
using WebMatrix.WebData;

namespace Pizzeria.Models
{
    public class StoreData: DropCreateDatabaseAlways<PizzeriaDBContext>
    {
        protected override void Seed(PizzeriaDBContext context)
        {
            var categories = new List<Category> {
                new Category { Name = "Thin Crust" , Description="Hand-stretched thin crust pizzas with unique topping."},
                 new Category { Name = "Signature Pizzas" , Description="Hand-stretched thin crust pizzas with unique topping."},
                new Category { Name = "Chef's Recommendation" , Description="Specially recommended by our chef with variety of toppings."},
                new Category { Name = "All Time Favourites" , Description="Most ordered pizzas loved internationally and locally."},
                new Category { Name = "Pizzeria Classics" , Description="The classic pizzas served by Pizzeria over a decade."},
            
            };
         new List<Item> {
            new Item{ItemName="Margherita",ItemPrice=6.75M,Ingredients="Tomatoes, onions, and cheese",ImageLocation="/Content/Images/pizza01.jpg",Category=categories.Single(c => c.Name == "All Time Favourites")},
            new Item{ItemName="Cheese Feast",ItemPrice=9.75M,Ingredients="Green chillies, onions, and extra cheese",ImageLocation="/Content/Images/pizza02.jpg",Category=categories.Single(c => c.Name == "All Time Favourites")},
            new Item{ItemName="Exotica",ItemPrice=11.75M,Ingredients="Sweet corns, mushrooms, onions, and extra cheese",ImageLocation="/Content/Images/pizza03.jpg",Category=categories.Single(c => c.Name == "All Time Favourites")},
            new Item{ItemName="Corn Delight",ItemPrice=5.75M,Ingredients="Sweet corns, capsicum, onions, and cheese",ImageLocation="/Content/Images/pizza01.jpg",Category=categories.Single(c => c.Name == "Thin Crust")},
            new Item{ItemName="Tuscani Margherita",ItemPrice=6.75M,Ingredients="Mozzerella cheese, tomato slices, and fresh basil leaves.",ImageLocation="/Content/Images/pizza02.jpg",Category=categories.Single(c => c.Name == "Thin Crust")},
            new Item{ItemName="Mushroom Mania",ItemPrice=6.75M,Ingredients="Mushrooms, assorted bell peppers, baby corn, cherry tomato.",ImageLocation="/Content/Images/pizza03.jpg",Category=categories.Single(c => c.Name == "Thin Crust")},
            new Item{ItemName="Assorted Delight",ItemPrice=5.75M,Ingredients="Smoked chicken, jalapenos, assorted bell peppers, mushrooms, onions, and mozzarella cheese.",ImageLocation="/Content/Images/pizza01.jpg",Category=categories.Single(c => c.Name == "Signature Pizzas")},
            new Item{ItemName="Chicken Mayhem",ItemPrice=5.75M,Ingredients="Chicken ham, cheese, onion, chicken sausages, smoked chicken, and fresh basil leaves.",ImageLocation="/Content/Images/pizza02.jpg",Category=categories.Single(c => c.Name == "Signature Pizzas")},
            new Item{ItemName="Chicken Delight",ItemPrice=5.75M,Ingredients="Chicken ham, cheese, smoked chicken, capsicum, and green chillies.",ImageLocation="/Content/Images/placeholder.jpg",Category=categories.Single(c => c.Name == "Chef's Recommendation")},
            new Item{ItemName="Mexican Magic",ItemPrice=8.50M,Ingredients="Chicken ham, cheese, smoked chicken, capsicum, and green chillies.",ImageLocation="/Content/Images/pizza04.jpg",Category=categories.Single(c => c.Name == "Chef's Recommendation")},
            new Item{ItemName="American Fury",ItemPrice=6.50M,Ingredients="Smoked chicken, jalapenos, assorted bell peppers, mushrooms, onions, and mozzarella cheese.",ImageLocation="/Content/Images/pizza01.jpg",Category=categories.Single(c => c.Name == "Chef's Recommendation")},
            new Item{ItemName="Corny Cream",ItemPrice=6.00M,Ingredients="Sweet corns,Green chillies, onions, and extra cheese.",ImageLocation="/Content/Images/placeholder.jpg",Category=categories.Single(c => c.Name == "Signature Pizzas")},
            new Item{ItemName="Chilly Fever",ItemPrice=7.00M,Ingredients="Red chillies,Green chillies, capsicum, onions, and cheese.",ImageLocation="/Content/Images/pizza03.jpg",Category=categories.Single(c => c.Name == "Signature Pizzas")},
            new Item{ItemName="Mushroom Magic",ItemPrice=7.00M,Ingredients="Red chillies,jalapenos, onions, mushrooms, and cheese.",ImageLocation="/Content/Images/pizza03.jpg",Category=categories.Single(c => c.Name == "Pizzeria Classics")},
            }.ForEach(a => context.Items.Add(a));
            base.Seed(context);
            context.SaveChanges();
            SeedMembership();

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