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
    public class SpamController : ApiController
    {
        private SpamServices sp = new SpamServices();
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]SpamModel addspam)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            addspam.UserId = userInfo.UserId;
            sp.AddNewSpam(addspam);
            return Ok();

        }

    }
}
