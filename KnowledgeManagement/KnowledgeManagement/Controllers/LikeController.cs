using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class LikeController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        LikeService like = new LikeService();
       

        /// <summary>
        /// This function will help a user to like a post 
        /// </summary>
        /// <param name="value">Value is the object of the model and the model contains 
        /// userid and postid</param>
        /// <returns>this will return status code 200</returns>
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]LikedPostModel value)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            value.UserId = userInfo.UserId;
            like.LikePost(value);
            return Ok();
        }


    }
}
