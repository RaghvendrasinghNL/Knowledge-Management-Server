//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KnowledgeManagement
{
    using System;
    using System.Collections.Generic;
    
    public partial class Notification
    {
        public int NotificationId { get; set; }
        public int NotificationType { get; set; }
        public int IsRead { get; set; }
        public int PostId { get; set; }
        public int UserId { get; set; }
    
        public virtual User User { get; set; }
        public virtual Post Post { get; set; }
    }
}
