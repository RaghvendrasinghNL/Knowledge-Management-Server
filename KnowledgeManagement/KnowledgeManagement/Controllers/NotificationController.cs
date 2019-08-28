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
using KnowledgeManagement.Filter;
using System.Web;
using NLog;
using System.Security.Claims;

namespace KnowledgeManagement.Controllers
{
    public class NotificationController : ApiController
    {
        // NotificationService notificationService = new NotificationService();

        private readonly INotificationService _notification;
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();


        public NotificationController(INotificationService res)
        {
            _notification = res;
        }
        /// <summary>
        /// This will fetch the notification of the user according to their userid 
        /// </summary>
        /// <returns>A list of notifications along with the status code 200</returns>
        [JwtAuthentication]
        public IHttpActionResult Get()
        {
            try
            {
                var identity = (ClaimsIdentity)User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userid = Int32.Parse(userIdClaim?.Value);
                logger.Info("Notification controller and returning result");

                //var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
                //var result = _notification.GetUserNotification(userInfo.UserId);
                var result = _notification.GetUserNotification(userid);
                return Ok(result);
            }
            catch(Exception ex)
            {
                logger.Error("Notification#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }
        
    }
}