namespace KnowledgeManagement.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class _new : DbMigration
    {
        public override void Up()
        {
            DropColumn("dbo.Tag", "CreatedAt");
            DropColumn("dbo.Tag", "UpdatedAt");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Tag", "UpdatedAt", c => c.DateTime(nullable: false));
            AddColumn("dbo.Tag", "CreatedAt", c => c.DateTime(nullable: false));
        }
    }
}
