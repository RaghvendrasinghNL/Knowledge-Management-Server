using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class NotificationService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        public NotificationModel GetNotificationById(int Id)
        {
            var result = db.Notifications.Where(w => w.NotificationId == Id).Select(w =>
                         new NotificationModel
                         {
                             Type = w.NotificationType,
                             IsRead=w.IsRead

                         }
            ).FirstOrDefault();

            return result;
        }

    }
}
