namespace KnowledgeManagement.Models
{
    public class LikedPostModel
    {
        /// <summary>
        /// Id of the user
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// Id of the Post
        /// </summary>
        public int PostId { get; set; }
        public int countLikes { get; set; }
        public int IsLiked { get; set; }
    }
}