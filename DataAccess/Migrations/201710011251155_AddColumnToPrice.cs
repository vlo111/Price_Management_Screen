namespace DataAccess.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddColumnToPrice : DbMigration
    {
        public override void Up()
        {
            Sql("USE CenDekRyan");
            AddColumn("dbo.Price", "EmailCustomer", c => c.Boolean(nullable: false));
        }

        public override void Down()
        {
            DropColumn("dbo.Price", "EmailCustomer");
        }
    }
}
