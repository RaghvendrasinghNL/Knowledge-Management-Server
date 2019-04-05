using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    /// <summary>
    /// 
    /// </summary>
    public class NotificationService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

       
        /// <summary>
        /// This methid will return list of all notifications associated to a user.
        /// </summary>
        /// <param name="UserId">the user who is logged in</param>
        /// <returns>list of string array denoting notification.</returns>
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
           /* List<string> UserNotifications = new List<string>();

            foreach (var notif in notifs)
            {
                var status = (notif.Type == 1) ? "Liked" : "Commented";
                string str = "Your post named: " + notif.PostName + " is " + status + " by "+ notif.DoneBy;
                UserNotifications.Add(str);
            }
                       return UserNotifications;*/

    }

    }
}
