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
    public class ReportCommentController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        CommentService cs = new CommentService();

        // POST: api/default
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]ReportCommentModel report)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            report.UserId = userInfo.UserId;
            cs.EditMyComment(report);
            return Ok();

        }

    }   
}
