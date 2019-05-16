using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace KnowledgeManagement.Models
{
    public class AddPostRequestModel: IValidatableObject
    {
        /// <summary>
        /// Title of the Post
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// Description of the post
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// Id for the User
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// Id for the category
        /// </summary>
        public int CategoryId { get; set; }
        /// <summary>
        /// Tags for the post
        /// </summary>
        public List<int> Tags { get; set; }
        /// <summary>
        /// Image of the user
        /// </summary>
        public string Image { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            
            throw new System.NotImplementedException();
        }
    }
}