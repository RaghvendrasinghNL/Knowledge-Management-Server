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
        /// <summary>
        /// Id for the User
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// Id for the category
        /// </summary>
        public int CategoryId { get; set; }
        [Required]
        public List<int> Tags { get; set; }
        /// <summary>
        /// Image of the user
        /// </summary>
        public string Image { get; set; }

    }
}