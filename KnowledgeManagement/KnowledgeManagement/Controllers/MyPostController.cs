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
    public class MyPostController : ApiController
    {
        private AddPostServices Mpc = new AddPostServices();
        

        // POST api/<controller>
        public void Post([FromBody]AddPostRequestModel value)
        {
            Mpc.AddNewPost(value);
        }

       
    }
}