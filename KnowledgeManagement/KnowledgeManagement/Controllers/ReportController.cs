using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class ReportController : ApiController
    {
        

        // POST: api/Report
        [CustomAuthorize]
        public void Post([FromBody]ReportRequestModel value)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            //ReportASpam(value);
        }

       
    }
}
