using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class ModeratorNotificationData : IModeratorNotificationData
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        /// <summary>
        /// This method will select the notification if the user is moderator
        /// </summary>
        /// <param name="UserId">Takes the userid as the input and will fetch the notifications</param>
        /// <returns>A list of notifications according to the userid </returns>
        public List<NotificationModel> GetModeratorNotification(int UserId)
        {

            var user = db.Users.FirstOrDefault(u => u.UserId == UserId && u.isModerator == 1);
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
                                         PostName = p.Title,
                                         DoneBy = u.FirstName

                                     }).ToList();



                notifs.AddRange(notifications);
            }
            return notifs;
        }
    }
}