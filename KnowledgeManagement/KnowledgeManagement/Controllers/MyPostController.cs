using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web;
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
        private MyPostServices Mp = new MyPostServices();

       [CustomAuthorize]
        public IHttpActionResult Get()
        {
            var userInfo =  CallContext.GetData("UserInfo") as UserDetails;
            return Ok(Mp.MySeeRecentPost(userInfo.UserId));
        }

        

    }

    }