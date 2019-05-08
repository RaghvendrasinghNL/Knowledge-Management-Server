namespace KnowledgeManagement.Models
{
    public class NotificationModel
    {
        public int Type { get; set; }
        public int IsRead { get; set; }
        public string PostName { get; set; }
        public string DoneBy { get; set; }
    }
}