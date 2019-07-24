using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class AssociatedTagModel
    {
        public int TagId { get; set; }
        public List<int> AssociatedId { get; set; }
    }
}