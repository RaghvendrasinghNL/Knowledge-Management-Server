using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class Report
    {
        [Key]
        public int ReportId { get; set; }
        public string Comment { get; set; }
        public int PostId { get; set; }
        public int UserId { get; set; }
        public int Isread { get; set; }

        public virtual Post Post { get; set; }
        public virtual User User { get; set; }
    }
}