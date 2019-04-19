using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    
        public class ModeratorNotificationServices
        {
            KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

            public List<Notify> GetModeratorNotification(int UserId)
            {

                var user = db.Users.FirstOrDefault(u => u.UserId == UserId && u.isModerator == true);
                var posts = (from p in db.Posts
                             where p.UserId == user.UserId
                             select p).ToList();
                


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