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
        /// <summary>
        /// 
        /// </summary>
        /// <param name="categoryid">This model will request FirstName,PostId,Description,Title,PostDate</param>
        /// <returns>Posts</returns>
       // [CustomAuthorize]
        public IHttpActionResult Get(int categoryid)
        {
            var data = Ps.SeeRecentPost(categoryid); //Category id
            return Ok(data);
        }

        
        }
    }