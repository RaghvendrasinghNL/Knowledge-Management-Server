using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
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
        
       // [CustomAuthorize]
        public IHttpActionResult Get(int id)
        {
            var data = Ps.SeeRecentPost(id); //Category id
            return Ok(data);
        }

        
        }
    }