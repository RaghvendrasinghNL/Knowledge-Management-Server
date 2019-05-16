using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class ReportCommentModel
    {
        public int UserId { get; set; }
        public int CommmentId { get; set; }
        public string Comment { get; set; }
    }
}