using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class User : BaseEntity
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailId { get; set; }
        public string Password { get; set; }
        public Nullable<bool> isActive { get; set; }
        public Nullable<int> isModerator { get; set; }
        public string Token { get; set; }

      
        public virtual ICollection<Comment> Comments { get; set; }
        
        public virtual ICollection<Like> Likes { get; set; }
       
        public virtual ICollection<Notification> Notifications { get; set; }
       
        public virtual ICollection<Post> Posts { get; set; }
       
        public virtual ICollection<Report> Reports { get; set; }
       
        public virtual ICollection<CommentReport> CommentReports { get; set; }
    }
}