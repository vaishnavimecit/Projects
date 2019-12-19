

namespace Jeanstation.Migrations
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity.Migrations;
    using System.Linq;
    using System.Web;
    public partial class InitialCreate : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Jeans",
                c => new
                {
                    ID = c.Long(nullable: false, identity: true),
                    Jeans_Name = c.String(),
                    Details = c.String(),
                    Price = c.Int(nullable: false),
                    JeansCategoryID = c.Int(nullable: false),
                })
                .PrimaryKey(t => t.ID)
                .ForeignKey("dbo.JeansCategories", t => t.JeansCategoryID, cascadeDelete: true)
                .Index(t => t.JeansCategoryID);

            CreateTable(
                "dbo.JeansCategories",
                c => new
                {
                    JeansCategoryID = c.Int(nullable: false, identity: true),
                    strCategory = c.String(),
                })
                .PrimaryKey(t => t.JeansCategoryID);

        }

        public override void Down()
        {
            DropIndex("dbo.Jeans", new[] { "JeansCategoryID" });
            DropForeignKey("dbo.Jeans", "JeansCategoryID", "dbo.JeansCategories");
            DropTable("dbo.JeansCategories");
            DropTable("dbo.Jeans");
        }
    }
}
