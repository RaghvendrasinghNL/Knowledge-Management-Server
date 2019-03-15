﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class PostRequestModel
    {
        public int PostId { get; set; }
        public string Heading  { get; set; }
        public string Description { get; set; }
        public  DateTime PostDate { get; set; }
        public int likecount { get; set;}
        public int isActive { get; set; }
    }
}