using System;
using System.Collections.Generic;
using KnowledgeManagement.Migrations;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace KnowledgeManagement.Models.Entities
{
    public class KnowledgeManagementContext : DbContext
    {

        public KnowledgeManagementContext() : base("name=KnowledgeManagementEntities")
        {
           Database.SetInitializer(new MigrateDatabaseToLatestVersion<KnowledgeManagementContext,Configuration>());
           // Database.SetInitializer(new DropCreateDatabaseAlways<KnowledgeManagementEntities>());
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<OneToManyCascadeDeleteConvention>();
            modelBuilder.Conventions.Remove<ManyToManyCascadeDeleteConvention>();
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
            base.OnModelCreating(modelBuilder);

        }

        public DbSet<AssociatedTag> AssociatedTags { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Comment> Comments { get; set; }
        public DbSet<Like> Likes { get; set; }
        public DbSet<Notification> Notifications { get; set; }
        public DbSet<Post> Posts { get; set; }
        public DbSet<PostTag> PostTags { get; set; }
        public DbSet<Report> Reports { get; set; }
        public DbSet<Tag> Tags { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<CommentReport> CommentReports { get; set; }

    }
}