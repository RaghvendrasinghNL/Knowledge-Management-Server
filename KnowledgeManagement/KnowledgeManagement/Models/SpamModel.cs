namespace KnowledgeManagement.Models
{
    public class SpamModel
    {
        /// <summary>
        /// Comment
        /// </summary>
        public string Comment { get; set; }
        /// <summary>
        /// PostId
        /// </summary>
        public int PostId { get; set; }
        /// <summary>
        /// Id of the user
        /// </summary>
        public int UserId { get; set; }
    }
}