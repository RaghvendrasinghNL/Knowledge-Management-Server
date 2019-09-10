using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public partial class Comment : BaseEntity
    {
        [Key]
        public int CommentId { get; set; }
        public string Content { get; set; }
        public System.DateTime CommentDate { get; set; }
        public int PostId { get; set; }
        public int UserId { get; set; }
        public Nullable<bool> IsDeleted { get; set; }

        public virtual Post Post { get; set; }
        public virtual User User { get; set; }
      
        public virtual ICollection<CommentReport> CommentReports { get; set; }
    }
}