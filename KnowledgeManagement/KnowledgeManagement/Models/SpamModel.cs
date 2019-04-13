using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class SpamModel
    {
       // public int ReportId { get; set; }
        public string Comment { get; set; }
        public int PostId { get; set; }
        public int UserId { get; set; }
    }
}