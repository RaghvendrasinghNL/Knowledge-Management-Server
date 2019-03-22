using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class LikeController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        // GET: api/Like
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Like/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Like
        public IHttpActionResult Post([FromBody]CountLikedPost value)
        {
            using (var res = new KnowledgeManagementDevEntities())
            {
                res.Likes.Add(new Like()
                {
                    UserId = value.UserId,
                    PostId = value.PostId
                });

                res.SaveChanges();


                return Ok();

            }

        }


        // PUT: api/Like/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Like/5
        public void Delete(int id)
        {
        }
    }
}
