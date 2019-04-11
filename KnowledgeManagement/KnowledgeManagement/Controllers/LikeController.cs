using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class LikeController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
       

        // POST: api/Like
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]CountLikedPost value)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            
                Like postLiked = new Like()
                {
                    
                    UserId = userInfo.UserId,
                    PostId = value.PostId,
                    
                };
                db.Likes.Add(postLiked);
                //db.Entry(postLiked).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                
                Notification obj1 = new Notification();
                //obj1.NotificationId = 1; // auto increment
                
                obj1.NotificationType = 1;//comment is 0 like is 1 
                obj1.IsRead = 0;
                obj1.PostId = value.PostId;
                obj1.UserId = userInfo.UserId;
                db.Notifications.Add(obj1);
                db.SaveChanges();


                return Ok();

            

        }


    }
}
