using System;

namespace KnowledgeManagement.Models
{
    public class ReportRequestModel
    {
        /// <summary>
        /// Id of the Post
        /// </summary>
        public int PostId { get; set; }
        /// <summary>
        /// Comment
        /// </summary>
        public string Comment { get; set; }
        /// <summary>
        /// Title
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// PostDate
        /// </summary>
        public DateTime PostDate { get; set; }
        /// <summary>
        /// Image of user
        /// </summary>
        public string Image { get; set; }
        /// <summary>
        /// Name of user
        /// </summary>
        public string Name { get; set; }

    }
}