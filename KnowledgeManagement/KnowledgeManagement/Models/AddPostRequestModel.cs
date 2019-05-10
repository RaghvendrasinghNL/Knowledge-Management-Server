using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace KnowledgeManagement.Models
{
    public class AddPostRequestModel: IValidatableObject
    {

        public string Title { get; set; }
        public string Description { get; set; }
        public int UserId { get; set; }
        public int CategoryId { get; set; }
        public List<int> Tags { get; set; }
        public string Image { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            
            throw new System.NotImplementedException();
        }
    }
}