using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace KnowledgeManagement.Models
{
    public class AddPostRequestModel
    {
        [Required]
        public string Title { get; set; }
        [Required]
        public string Description { get; set; }
        public int UserId { get; set; }
        public int CategoryId { get; set; }
        [Required]
        public List<int> Tags { get; set; }
        public string Image { get; set; }

    }
}