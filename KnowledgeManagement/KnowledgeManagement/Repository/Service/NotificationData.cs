using KnowledgeManagement.Models;
using KnowledgeManagement.Models.Entities;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class NotificationData : INotificationData
    {
       readonly KnowledgeManagementEntities db = new KnowledgeManagementEntities();
        /// <summary>
        /// This will match the userId and will fetch the notification for like or comments 
        /// </summary>
        /// <param name="UserId">This will take userid as the parameter and will show 
        /// notification for that user only </param>
        /// <returns>It will return the list of notification</returns>
        public List<NotificationModel> GetUserNotification(int UserId)
        {

            var user = db.Users.FirstOrDefault(u => u.UserId == UserId);
            var posts = (from p in db.Posts
                         where p.UserId == user.UserId
                         select p).ToList();


            List<NotificationModel> notifs = new List<NotificationModel>();
            foreach (var p in posts)
            {
                var notifications = (from n in db.Notifications
                                     join u in db.Users on n.UserId equals u.UserId
                                     where n.PostId == p.PostId
                                     select new NotificationModel
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