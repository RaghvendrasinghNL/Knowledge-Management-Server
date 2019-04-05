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

        public List<string> GetUserNotification(string token)
        {
            var user = db.Users.FirstOrDefault(u => u.Token == token);

            var post = db.Posts.Where(p => p.UserId == user.UserId);
            List<Notify> notification = new List<Notify>();
            foreach (var p in post)
            {
                var notifications = from n in db.Notifications
                            join u in db.Users on n.UserId equals u.UserId
                            where n.PostId == p.PostId
                            select new Notify
                            {
                                Type = n.NotificationType,
                                IsRead = n.IsRead,
                                PostName = p.Title,
                                DoneBy = u.FirstName
                            };
                foreach(var notif in notifications)
                {
                    notification.Add(notif);
                }
            }

            List<string> UserNotifications = new List<string>();

            foreach (var notif in notification)
            {
                var status = (notif.Type == 1) ? "Liked" : "Commennt";
                string str = "Your post named: " + notif.PostName + " is " + status + " by " + notif.DoneBy;
                UserNotifications.Add(str);
            }

            return UserNotifications;

        }

    }
}
