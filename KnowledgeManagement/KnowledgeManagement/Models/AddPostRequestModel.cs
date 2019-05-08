using System.Collections.Generic;

namespace KnowledgeManagement.Models
{
    public class AddPostRequestModel
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public int UserId { get; set; }
        public int CategoryId { get; set; }
        public List<int> Tags { get; set; }
        public string Image { get; set; }
    }
}