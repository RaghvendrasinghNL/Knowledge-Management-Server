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
        private LikeServices Ls;
        PostController() {
            Ps = new PostServices();
            Ls = new LikeServices();
        }

        public IHttpActionResult Get(int Id)
        {
            return Ok(Ls.LikedPostCount(Id));
        }


        // GET api/<controller>/5
        public IHttpActionResult Get()
        {
            var data = Ps.SeeRecentPost();
            return Ok(data);
        }

    }
}