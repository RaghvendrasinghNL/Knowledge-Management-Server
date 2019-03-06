﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class AddPostRequestModel
    {
        public string Heading { get; set; }
        public string Description { get; set; }
        public DateTime PostDate { get; set; }
        public int UserId { get; set; }
        public int TagId { get; set; }


    }
}