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

namespace KnowledgeManagement.Controllers
{
    public class ModeratorNotificationController : ApiController
    {

  
        private readonly IModeratorNotificationService _moderatorNotification;
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();

        public ModeratorNotificationController(IModeratorNotificationService result)
        {
            _moderatorNotification = result;
        }

        /// <summary>
        /// This will fetch all the moderator notification according to a user
        /// </summary>
        /// <returns>This will return the status code 200 </returns>
        [JwtAuthentication]
        public IHttpActionResult Get()
        {
            try
            {
                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                logger.Info("ModeratorNotification controller and returning result");
                //   var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
                // var result = _moderatorNotification.GetModeratorNotification(userInfo.UserId);
                var result = _moderatorNotification.GetModeratorNotification(userid);
                return Ok(result);
            }
            catch(Exception ex)
            {
                logger.Error("MyPost#Get!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }
    }
}
