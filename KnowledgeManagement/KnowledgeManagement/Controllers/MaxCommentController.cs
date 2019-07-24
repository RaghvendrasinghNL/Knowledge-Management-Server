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
    public class MaxCommentController : ApiController
    {
        private MaxCommentService mc = new MaxCommentService();

        [CustomAuthorize]
        public IHttpActionResult Get(int id)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var userid = userInfo.UserId;


            return Ok(mc.MaxComments(id, userid));
        }
    }
}
