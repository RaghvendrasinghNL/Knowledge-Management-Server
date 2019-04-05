using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class NotificationController : ApiController
    {
        NotificationService notificationService = new NotificationService();
       

    
        

        [CustomAuthorize]
        public IHttpActionResult Get()
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            var result = notificationService.GetUserNotification(userInfo.UserId);
            return Ok(result);
        }
        
    }
}