namespace KnowledgeManagement.Models
{
    public class NotificationModel
    {
        /// <summary>
        /// Notification Type whether liked or commented or spam(for Moderator only)
        /// </summary>
        public int Type { get; set; }
        /// <summary>
        /// Notification is read or not 
        /// </summary>
        public int IsRead { get; set; }
        /// <summary>
        /// Name of the Post
        /// </summary>
        public string PostName { get; set; }
        /// <summary>
        /// Who did it(Name of the user)
        /// </summary>
        public string DoneBy { get; set; }
    }
}