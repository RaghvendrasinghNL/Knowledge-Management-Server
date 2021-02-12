namespace KnowledgeManagement.Models
{
    public class UserDetailsModel
    {
        /// <summary>
        /// Id of the user
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// FirstName of the user
        /// </summary>
        public string FirstName { get; set; }
        /// <summary>
        /// Last name of the user
        /// </summary>
        public string Lastname { get; set; }
        /// <summary>
        /// EmailId of the user
        /// </summary>
        public string EmailId { get; set; }
        /// <summary>
        /// User is active or not
        /// </summary>
        public bool isActive { get; set; }
        /// <summary>
        /// User is Moderator or not
        /// </summary>
        public int? isModerator { get; set; }
    }
}