using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;

namespace KnowledgeManagement.Controllers
{
    public class PostController : ApiController
    {
        private PostServices Ps;
        
        PostController() {
            Ps = new PostServices();
            
        }
        
       [CustomAuthorize]
        public IHttpActionResult Get(int id)
        {
           
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            var userId = userInfo.UserId;
            var data = Ps.SeeRecentPost(id,userId); //Category id
            return Ok(data);
        }

        
        }
    }