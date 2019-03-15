using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class MyPostModel
    {
        public int UserId { get; set; }
        public int PostId { get; set; }
        public string Heading { get; set; }
        public string Description { get; set; }
        public List<int> Tags { get; set; }
        public DateTime PostDate { get; set; }
    }
}