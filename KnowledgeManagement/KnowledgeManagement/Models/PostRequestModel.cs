using System;
using System.Collections.Generic;

namespace KnowledgeManagement.Models
{
    public class PostRequestModel
    {
        /// <summary>
        /// Id of the Post
        /// </summary>
        public int PostId { get; set; }
        /// <summary>
        /// Title of the Post 
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// Descriotion of the Post
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// Date of Post
        /// </summary>
        public DateTime PostDate { get; set; }
        /// <summary>
        /// Name who Posted
        /// </summary>
        public string Name { get; set; }
        /// <summary>
        /// Liked or not
        /// </summary>
        public int IsLiked { get; set; }
        /// <summary>
        /// Id of the User
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// Likes
        /// </summary>
        public int Likes { get; set; }
        /// <summary>
        /// No. of Likes
        /// </summary>
        public int Count { get; set; }
        /// <summary>
        /// Image
        /// </summary>
        public string Image { get; set; }
        /// <summary>
        /// TagName
        /// </summary>
        public List<string> TagName { get; set; }

       

        

    }
}