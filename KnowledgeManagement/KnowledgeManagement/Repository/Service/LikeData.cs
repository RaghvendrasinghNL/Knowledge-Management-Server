using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class LikeData : ILikeData
    {
        readonly KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        public void LikePost(LikedPostModel value)
        {
            var entry = db.Likes.Where(x => x.UserId == value.UserId && x.PostId == value.PostId).FirstOrDefault();

            if (entry != null)
            {
                db.Likes.Remove(entry);
                db.SaveChanges();

                Notification obj1 = new Notification();
                obj1.NotificationType = 1;
                obj1.IsRead = 0;
                obj1.PostId = value.PostId;
                obj1.UserId = value.UserId;
                db.Notifications.Add(obj1);
                db.SaveChanges();
                value.countLikes = (from l in db.Likes
                                    where l.PostId == value.PostId
                                    select l.UserId
               ).Count();

            }
            else
            {
                Like postLiked = new Like();
                postLiked.UserId = value.UserId;
                postLiked.PostId = value.PostId;
                db.Likes.Add(postLiked);
                db.SaveChanges();

                Notification obj1 = new Notification();
                obj1.NotificationType = 1;
                obj1.IsRead = 0;
                obj1.PostId = value.PostId;
                obj1.UserId = value.UserId;
                db.Notifications.Add(obj1);
                db.SaveChanges();
                value.countLikes =(from l in db.Likes
                                                 where l.PostId == value.PostId
                                                 select l.UserId
                ).Count();

               var data = db.Likes.FirstOrDefault(l => l.UserId == value.UserId && l.PostId == value.PostId);
                if (data == null)
                    value.IsLiked = 0;
                else
                    value.IsLiked = 1;


            }

          
        }


    }
}