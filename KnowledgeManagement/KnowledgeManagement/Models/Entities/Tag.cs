using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class Tag : BaseEntity
    {
        [Key]
        public int TagId { get; set; }
        public string TagName { get; set; }

        
        public virtual ICollection<PostTag> PostTags { get; set; }
       
       
        public virtual ICollection<AssociatedTag> AssociatedTags2 { get; set; }
    }
}