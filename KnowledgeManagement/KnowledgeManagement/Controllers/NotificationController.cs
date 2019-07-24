using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Interface;

namespace KnowledgeManagement.Controllers
{
    public class NotificationController : ApiController
    {
        // NotificationService notificationService = new NotificationService();

        private readonly INotificationService _notification;

        public NotificationController(INotificationService res)
        {
            _notification = res;
        }
        /// <summary>
        /// This will fetch the notification of the user according to their userid 
        /// </summary>
        /// <returns>A list of notifications along with the status code 200</returns>
        [CustomAuthorize]
        public IHttpActionResult Get()
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var result = _notification.GetUserNotification(userInfo.UserId);
            return Ok(result);
        }
        
    }
}