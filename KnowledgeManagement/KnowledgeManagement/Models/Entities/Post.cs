using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class Post : BaseEntity
    {
        [Key]
        public int PostId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public System.DateTime PostDate { get; set; }
        public int UserId { get; set; }
        public int CategoryId { get; set; }
        public bool IsDeleted { get; set; }
        public string UserImage { get; set; }

        public virtual Category Category { get; set; }
        
        public virtual ICollection<Comment> Comments { get; set; }
       
        public virtual ICollection<Notification> Notifications { get; set; }
       
        public virtual ICollection<Report> Reports { get; set; }
       
        public virtual ICollection<PostTag> PostTags { get; set; }
       
        public virtual ICollection<Like> Likes { get; set; }
        public virtual User User { get; set; }
    }
}