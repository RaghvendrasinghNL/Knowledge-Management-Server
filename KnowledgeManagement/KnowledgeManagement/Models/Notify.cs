using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class Notify
    {
        public int Type { get; set; }
        public int IsRead { get; set; }
        public string PostName { get; set; }
        public string DoneBy { get; set; }
    }
}