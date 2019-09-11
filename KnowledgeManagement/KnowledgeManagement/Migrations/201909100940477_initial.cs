namespace KnowledgeManagement.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AssociatedTag",
                c => new
                    {
                        AID = c.Int(nullable: false, identity: true),
                        GroupId = c.Int(nullable: false),
                        TagId = c.Int(nullable: false),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.AID)
                .ForeignKey("dbo.Tag", t => t.TagId)
                .Index(t => t.TagId);
            
            CreateTable(
                "dbo.Tag",
                c => new
                    {
                        TagId = c.Int(nullable: false, identity: true),
                        TagName = c.String(),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.TagId);
            
            CreateTable(
                "dbo.PostTag",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        PostId = c.Int(nullable: false),
                        TagId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Post", t => t.PostId)
                .ForeignKey("dbo.Tag", t => t.TagId)
                .Index(t => t.PostId)
                .Index(t => t.TagId);
            
            CreateTable(
                "dbo.Post",
                c => new
                    {
                        PostId = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        Description = c.String(),
                        PostDate = c.DateTime(nullable: false),
                        UserId = c.Int(nullable: false),
                        CategoryId = c.Int(nullable: false),
                        IsDeleted = c.Boolean(nullable: false),
                        UserImage = c.String(),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.PostId)
                .ForeignKey("dbo.Category", t => t.CategoryId)
                .ForeignKey("dbo.User", t => t.UserId)
                .Index(t => t.UserId)
                .Index(t => t.CategoryId);
            
            CreateTable(
                "dbo.Category",
                c => new
                    {
                        CategoryId = c.Int(nullable: false, identity: true),
                        Title = c.String(),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.CategoryId);
            
            CreateTable(
                "dbo.Comment",
                c => new
                    {
                        CommentId = c.Int(nullable: false, identity: true),
                        Content = c.String(),
                        CommentDate = c.DateTime(nullable: false),
                        PostId = c.Int(nullable: false),
                        UserId = c.Int(nullable: false),
                        IsDeleted = c.Boolean(),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.CommentId)
                .ForeignKey("dbo.User", t => t.UserId)
                .ForeignKey("dbo.Post", t => t.PostId)
                .Index(t => t.PostId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.CommentReport",
                c => new
                    {
                        ReportId = c.Int(nullable: false, identity: true),
                        Comment = c.String(),
                        UserId = c.Int(nullable: false),
                        CommentId = c.Int(nullable: false),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.ReportId)
                .ForeignKey("dbo.Comment", t => t.CommentId)
                .ForeignKey("dbo.User", t => t.UserId)
                .Index(t => t.UserId)
                .Index(t => t.CommentId);
            
            CreateTable(
                "dbo.User",
                c => new
                    {
                        UserId = c.Int(nullable: false, identity: true),
                        FirstName = c.String(),
                        LastName = c.String(),
                        EmailId = c.String(),
                        Password = c.String(),
                        isActive = c.Boolean(),
                        isModerator = c.Int(),
                        Token = c.String(),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.UserId);
            
            CreateTable(
                "dbo.Like",
                c => new
                    {
                        LikeId = c.Int(nullable: false, identity: true),
                        PostId = c.Int(nullable: false),
                        UserId = c.Int(nullable: false),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.LikeId)
                .ForeignKey("dbo.Post", t => t.PostId)
                .ForeignKey("dbo.User", t => t.UserId)
                .Index(t => t.PostId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Notification",
                c => new
                    {
                        NotificationId = c.Int(nullable: false, identity: true),
                        NotificationType = c.Int(nullable: false),
                        IsRead = c.Int(nullable: false),
                        PostId = c.Int(nullable: false),
                        UserId = c.Int(nullable: false),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.NotificationId)
                .ForeignKey("dbo.Post", t => t.PostId)
                .ForeignKey("dbo.User", t => t.UserId)
                .Index(t => t.PostId)
                .Index(t => t.UserId);
            
            CreateTable(
                "dbo.Report",
                c => new
                    {
                        ReportId = c.Int(nullable: false, identity: true),
                        Comment = c.String(),
                        PostId = c.Int(nullable: false),
                        UserId = c.Int(nullable: false),
                        Isread = c.Int(nullable: false),
                        CreatedAt = c.DateTime(nullable: false),
                        UpdatedAt = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.ReportId)
                .ForeignKey("dbo.Post", t => t.PostId)
                .ForeignKey("dbo.User", t => t.UserId)
                .Index(t => t.PostId)
                .Index(t => t.UserId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.PostTag", "TagId", "dbo.Tag");
            DropForeignKey("dbo.PostTag", "PostId", "dbo.Post");
            DropForeignKey("dbo.Comment", "PostId", "dbo.Post");
            DropForeignKey("dbo.Report", "UserId", "dbo.User");
            DropForeignKey("dbo.Report", "PostId", "dbo.Post");
            DropForeignKey("dbo.Post", "UserId", "dbo.User");
            DropForeignKey("dbo.Notification", "UserId", "dbo.User");
            DropForeignKey("dbo.Notification", "PostId", "dbo.Post");
            DropForeignKey("dbo.Like", "UserId", "dbo.User");
            DropForeignKey("dbo.Like", "PostId", "dbo.Post");
            DropForeignKey("dbo.Comment", "UserId", "dbo.User");
            DropForeignKey("dbo.CommentReport", "UserId", "dbo.User");
            DropForeignKey("dbo.CommentReport", "CommentId", "dbo.Comment");
            DropForeignKey("dbo.Post", "CategoryId", "dbo.Category");
            DropForeignKey("dbo.AssociatedTag", "TagId", "dbo.Tag");
            DropIndex("dbo.Report", new[] { "UserId" });
            DropIndex("dbo.Report", new[] { "PostId" });
            DropIndex("dbo.Notification", new[] { "UserId" });
            DropIndex("dbo.Notification", new[] { "PostId" });
            DropIndex("dbo.Like", new[] { "UserId" });
            DropIndex("dbo.Like", new[] { "PostId" });
            DropIndex("dbo.CommentReport", new[] { "CommentId" });
            DropIndex("dbo.CommentReport", new[] { "UserId" });
            DropIndex("dbo.Comment", new[] { "UserId" });
            DropIndex("dbo.Comment", new[] { "PostId" });
            DropIndex("dbo.Post", new[] { "CategoryId" });
            DropIndex("dbo.Post", new[] { "UserId" });
            DropIndex("dbo.PostTag", new[] { "TagId" });
            DropIndex("dbo.PostTag", new[] { "PostId" });
            DropIndex("dbo.AssociatedTag", new[] { "TagId" });
            DropTable("dbo.Report");
            DropTable("dbo.Notification");
            DropTable("dbo.Like");
            DropTable("dbo.User");
            DropTable("dbo.CommentReport");
            DropTable("dbo.Comment");
            DropTable("dbo.Category");
            DropTable("dbo.Post");
            DropTable("dbo.PostTag");
            DropTable("dbo.Tag");
            DropTable("dbo.AssociatedTag");
        }
    }
}
