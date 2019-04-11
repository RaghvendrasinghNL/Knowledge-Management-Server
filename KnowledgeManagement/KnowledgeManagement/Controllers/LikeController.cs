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
       

        /// <summary>
        /// It will help user to like a post
        /// </summary>
        /// <param name="value">This model will take UserId and PostId </param>
        /// <returns> Help User to like a post</returns>
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]CountLikedPost value)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;          //Fetching UserId by using TokenId
            using (var res = new KnowledgeManagementDevEntities())
            {
                res.Likes.Add(new Like()
                { 
                    UserId = userInfo.UserId,
                    PostId = value.PostId
                });

                Notification obj1 = new Notification();
                //obj1.NotificationId = 1;           // auto increment 
                obj1.NotificationType = 1;          //0 for comment and 1 for like
                obj1.IsRead = 0;
                obj1.PostId = value.PostId;         //Post Id
                obj1.UserId = userInfo.UserId;      //User Id
                db.Notifications.Add(obj1);

                res.SaveChanges();
                db.SaveChanges();


                return Ok();

            }

        }


    }
}
