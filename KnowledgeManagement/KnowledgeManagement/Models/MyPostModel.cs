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
        public int Heading { get; set; }
        public int Description { get; set; }
        public int Tags { get; set; }
        public int PostDate { get; set; }
    }
}