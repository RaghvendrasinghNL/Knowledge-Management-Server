using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class CommentReport
    {
        [Key]
        public int ReportId { get; set; }
        public string Comment { get; set; }
        public int UserId { get; set; }
        public int CommentId { get; set; }

        public virtual Comment Comment1 { get; set; }
        public virtual User User { get; set; }
    }
}