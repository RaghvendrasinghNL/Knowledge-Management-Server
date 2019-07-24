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
    public class ModeratorNotificationController : ApiController
    {

        // ModeratorNotificationServices Mns = new ModeratorNotificationServices();

        private readonly IModeratorNotificationService _moderatorNotification;

        public ModeratorNotificationController(IModeratorNotificationService result)
        {
            _moderatorNotification = result;
        }

        /// <summary>
        /// This will fetch all the moderator notification according to a user
        /// </summary>
        /// <returns>This will return the status code 200 </returns>
        [CustomAuthorize]
        public IHttpActionResult Get()
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var result = _moderatorNotification.GetModeratorNotification(userInfo.UserId);
            return Ok(result);
        }
    }
}
