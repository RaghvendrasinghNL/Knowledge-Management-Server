using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using KnowledgeManagement.Services;

namespace KnowledgeManagement.Controllers
{
    public class PostController : ApiController
    {
        private PostServices Ps;
        PostController() {
            Ps = new PostServices();

        }

        // GET api/<controller>/5
        public IHttpActionResult Get()
        {
            var data = Ps.SeeRecentPost();
            return Ok(data);
        }

    }
}