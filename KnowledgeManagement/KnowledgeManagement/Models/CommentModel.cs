using System;

namespace KnowledgeManagement.Models
{
    public class CommentModel
    {
        /// <summary>
        /// Content of the Post
        /// </summary>
        public string Content { get; set; }
        /// <summary>
        /// Id of user
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// Date of comment
        /// </summary>
        public DateTime CommentDate { get; set; }
        /// <summary>
        /// Id of the Post
        /// </summary>
        public int PostId { get; set; }
        /// <summary>
        /// Name of the user
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Count of the no. of comment
        /// </summary>
        public int Count { get; set; }

    }
}