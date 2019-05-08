namespace KnowledgeManagement.Models
{
    public class UserDetailsModel
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string Lastname { get; set; }
        public string EmailId { get; set; }
        public bool isActive { get; set; }
        public int? isModerator { get; set; }
    }
}