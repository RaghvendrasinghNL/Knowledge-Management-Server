using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models.Entities
{
    public class Notification
    {
        [Key]
        public int NotificationId { get; set; }
        public int NotificationType { get; set; }
        public int IsRead { get; set; }
        public int PostId { get; set; }
        public int UserId { get; set; }

        public virtual Post Post { get; set; }
        public virtual User User { get; set; }
    }
}