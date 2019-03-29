using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class CommentModel
    {
        public string Content { get; set; }
        public int UserId { get; set; }
        public DateTime CommentDate { get; set; }
        public int PostId { get; set; }
        public string Name { get; set; }
        //public int CommentId { get; set; }
    }
}