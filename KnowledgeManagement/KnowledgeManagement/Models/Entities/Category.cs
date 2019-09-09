using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class Category
    {
        [Key]
        public int CategoryId { get; set; }
        public string Title { get; set; }
        public virtual ICollection<Post> Posts { get; set; }
    }
}