using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class AssociatedTag : BaseEntity
    {
        [Key]
        public int AID { get; set; }
        public int GroupId { get; set; }
        public int TagId { get; set; }

        public virtual Tag Tag { get; set; }
    }
}