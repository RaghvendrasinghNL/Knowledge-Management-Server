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
    public class MaxLikesCommentController : ApiController
    {
        private LikesCommentService mlc = new LikesCommentService();

        [CustomAuthorize]
        public IHttpActionResult Get(int id,bool value)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var userid = userInfo.UserId;


            return Ok(mlc.MaxLikesComment(id, userid,value));
        }
    }
}
