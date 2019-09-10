using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Filter;
using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Security.Claims;
using System.Web;
using System.Web.Http;
using System.Threading.Tasks;

namespace KnowledgeManagement.Controllers
{
    public class AssociatedTagsController : ApiController
    {

      

        private readonly IAssociatedTagsService _at;

        public AssociatedTagsController(IAssociatedTagsService value)
        {
            _at = value;
        }

        [JwtAuthentication]
        public async Task<IHttpActionResult> Post([FromBody]AssociatedTagModel associatedTag)
        {
            
           await _at.AddAssociatedTags(associatedTag);
            return Ok();
        }


    }
}
