using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class DeleteMyPostController : ApiController
    {
       

        // DELETE: api/DeleteMyPost/5
        public IHttpActionResult Delete(int id)
        {
            if (id <= 0)
                return BadRequest("Not a valid student id");

            using (var db = new KnowledgeManagementDevEntities())
            {
                var postdelete = db.Posts
                    .Where(s => s.PostId == id)
                    .FirstOrDefault();

                db.Entry(postdelete).State = System.Data.Entity.EntityState.Deleted;
                
                db.SaveChanges();
            }

            return Ok();
        }
    }
}
