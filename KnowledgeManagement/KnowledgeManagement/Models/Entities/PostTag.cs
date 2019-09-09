﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class PostTag
    {
        [Key]
        public int PostId { get; set; }
        public int TagId { get; set; }
        public int Id { get; set; }

        public virtual Tag Tag { get; set; }
        public virtual Post Post { get; set; }
    }
}