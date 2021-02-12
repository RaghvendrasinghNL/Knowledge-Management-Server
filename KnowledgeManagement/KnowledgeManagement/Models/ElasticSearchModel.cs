using System.Collections.Generic;

namespace KnowledgeManagement.Models
{
    public class ElasticSearchModel
    {
        /// <summary>
        /// Id of the Post
        /// </summary>
        public int PostId { get; set; }
        /// <summary>
        /// Title
        /// </summary>
        public string Title { get; set; }
        /// <summary>
        /// Tags
        /// </summary>
        public List<string> Tags { get; set; }
        /// <summary>
        /// Image
        /// </summary>
        public string Image { get; set; }
        public override string ToString()
        {
            return string.Format("PostId: '{0}', Title: '{1}', Tags: '{2}'", PostId, Title, Tags);
        }

    }
}