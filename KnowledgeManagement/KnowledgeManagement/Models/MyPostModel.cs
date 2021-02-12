using System;
using System.Collections.Generic;

namespace KnowledgeManagement.Models
{
    public class MyPostModel
    {
        /// <summary>
        /// FirstName of the user
        /// </summary>
        public string FirstName { get; set; }
        /// <summary>
        /// PostId of the user
        /// </summary>
        public int PostId { get; set; }
        /// <summary>
        /// Title of the Post
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// Description of the Post
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// Id of Tags
        /// </summary>
        public List<int> TagId { get; set; }
        /// <summary>
        /// TagName
        /// </summary>
        public List<string> TagName { get; set; }
        /// <summary>
        /// Date of Post
        /// </summary>
        public DateTime PostDate { get; set; }
        /// <summary>
        /// Image
        /// </summary>
        public string Image { get; set; }
        /// <summary>
        /// Likes
        /// </summary>
        public int Likes { get; set; }
        /// <summary>
        /// Count of Likes
        /// </summary>
        public int Count { get; set; }
        /// <summary>
        /// To see where it's liked or not
        /// </summary>
        public int IsLiked { get; set; }


    }
}