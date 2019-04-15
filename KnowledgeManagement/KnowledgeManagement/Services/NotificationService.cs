using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    /// <summary>
    /// This will show notification to the user whenevr there is any comment or like in the posts.
    /// </summary>
    public class NotificationService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();



        public List<Notify> GetUserNotification(int UserId)
        {
            var user = db.Users.FirstOrDefault(u => u.UserId == UserId);
            var posts = (from p in db.Posts
                         where p.UserId == user.UserId
                         select p).ToList();

            //db.Posts.Where(p => p.UserId == user.UserId);
            List<Notify> notifs = new List<Notify>();
            foreach (var p in posts)
            {
                var notifications = (from n in db.Notifications
                                     join u in db.Users on n.UserId equals u.UserId
                                     where n.PostId == p.PostId
                                     select new Notify
                                     {
                                         Type = n.NotificationType,
                                         IsRead = n.IsRead,
                                         PostName = p.Title,
                                         DoneBy = u.FirstName
                                     }).ToList();

                notifs.AddRange(notifications);
            }

            return notifs;

        }

    }
}
