using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Interface;

namespace KnowledgeManagement.Controllers
{
    public class SpamController : ApiController
    {
        //private SpamServices sp = new SpamServices();

        private readonly ISpamService _spam;

        public SpamController(ISpamService value)
        {
            _spam = value;
        }


        /// <summary>
        /// This method is used to fetch all the spammed posts 
        /// </summary>
        /// <returns>It will return the list of the posts</returns>

        
        public IHttpActionResult Get()
        {
        
            return Ok(_spam.GetPost());
        }

        /// <summary>
        /// This method is used for adding a entry in report table 
        /// </summary>
        /// <param name="addspam">addspam is the object of the model and will 
        /// take all the attributes in the model </param>
        /// <returns>this will return the status code 200</returns>
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]SpamModel addspam)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            addspam.UserId = userInfo.UserId;
            _spam.AddNewSpam(addspam);
            return Ok();

        }

        
        /// <summary>
        /// This will delete the post whenever a user wants to 
        /// </summary>
        /// <param name="id">It will take post Id as the parameter to remove entry from the post table </param>
        /// <returns>It will return the status code 200</returns>
        [CustomAuthorize]
        public IHttpActionResult Delete(int id) 
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;

            _spam.DeleteRecentPost(id);
            return Ok();

        }
    }
}
