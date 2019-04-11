using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class NotificationController : ApiController
    {
        NotificationService notificationService = new NotificationService();
       

    
        public NotificationModel Get(int UserId)
        {
            NotificationModel result = notificationService.GetNotificationById(UserId);

            return result;
        }
        /// <summary>
        /// It will show the notification to the user when anyone like or comment on his posts
        /// </summary>
        /// <param name="token">This model will request Type and IsRead</param>
        /// <returns>Show the notification if there is like or comment by anyone</returns>
        public IHttpActionResult Get(string token)
        {
            var result = notificationService.GetUserNotification(token);
            return Ok(result);
        }
        
    }
}