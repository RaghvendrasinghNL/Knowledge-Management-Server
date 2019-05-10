using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class EditPostModel
    {
        public int PostId { get; set; }
        public string Description { get; set; }
        public int UserId { get; set; }
    }
}