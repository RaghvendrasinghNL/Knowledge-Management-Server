using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace KnowledgeManagement.Controllers
{
    public class CommentController : ApiController
    {
        CommentService commentService = new CommentService();
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public List<CommentModel> Get(int id)
        {
            var result = commentService.GetCommentById(id);

            return result;
        }

        // POST api/<controller>
        public void Post([FromBody]CommentModel comment)
        {
            commentService.AddComment(comment);
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}