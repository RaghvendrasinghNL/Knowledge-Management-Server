﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class MyPostModel
    {
        //public int UserId { get; set; }
        public string FirstName { get; set; }
        public int PostId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public List<int> TagId { get; set; }
        public List<string> TagName { get; set; }

        public DateTime PostDate { get; set; }
       
    }
}