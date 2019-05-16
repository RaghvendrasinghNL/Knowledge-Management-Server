using System;
using System.ComponentModel.DataAnnotations;

namespace KnowledgeManagement.Models
{
    public class CommentModel
    {
        [Required]
        public string Content { get; set; }
        public int UserId { get; set; }
        public DateTime CommentDate { get; set; }
        [Required]
        public int PostId { get; set; }
        public string Name { get; set; }
        public int Count { get; set; }

    }
}