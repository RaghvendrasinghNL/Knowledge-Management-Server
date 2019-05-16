using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class EditPostModel
    {
        /// <summary>
        /// Id of the Post
        /// </summary>
        public int PostId { get; set; }
        /// <summary>
        /// Description of the post
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// Id of the user
        /// </summary>
        public int UserId { get; set; }
        public List<int> Tags { get; set; }
    }
}