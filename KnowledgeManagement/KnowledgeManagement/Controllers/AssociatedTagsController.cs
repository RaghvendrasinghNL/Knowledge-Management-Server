using KnowledgeManagement.App_Start;
using KnowledgeManagement.Business_Layer.Interface;
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
    public class AssociatedTagsController : ApiController
    {

        //AssociatedTagsService ats = new AssociatedTagsService();

        private readonly IAssociatedTagsService _at;

        public AssociatedTagsController(IAssociatedTagsService value)
        {
            _at = value;
        }

        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]AssociatedTagModel associatedTag)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var userid = userInfo.UserId;
            _at.AddAssociatedTags(associatedTag);
            return Ok();
        }
    }
}
