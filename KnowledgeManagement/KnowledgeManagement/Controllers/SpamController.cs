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
using KnowledgeManagement.Filter;
using System.Web;
using NLog;
using System.Security.Claims;

namespace KnowledgeManagement.Controllers
{
    public class SpamController : ApiController
    {
        
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();
        private readonly ISpamService _spam;

        public SpamController(ISpamService value)
        {
            _spam = value;
        }


        /// <summary>
        /// This method is used to fetch all the spammed posts 
        /// </summary>
        /// <returns>It will return the list of the posts</returns>

        [JwtAuthentication]
        public IHttpActionResult Get()
        {
            try
            {
                logger.Info("Spam controller and returning result");
                return Ok(_spam.GetPost());
            }
            catch(Exception ex)
            {
                logger.Error("Spam#Get!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }

        /// <summary>
        /// This method is used for adding a entry in report table 
        /// </summary>
        /// <param name="addspam">addspam is the object of the model and will 
        /// take all the attributes in the model </param>
        /// <returns>this will return the status code 200</returns>
        [JwtAuthentication]
        public IHttpActionResult Post([FromBody]SpamModel addspam)
        {
          
            try
            {

                var identity = (ClaimsIdentity)User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userid = Int32.Parse(userIdClaim?.Value);
                addspam.UserId = userid;
                logger.Info("Spam controller and returning result");
                _spam.AddNewSpam(addspam);
                return Ok();
            }
            catch(Exception ex)
            {
                logger.Error("Spam#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);

            }

        }

        
        /// <summary>
        /// This will delete the post whenever a user wants to 
        /// </summary>
        /// <param name="id">It will take post Id as the parameter to remove entry from the post table </param>
        /// <returns>It will return the status code 200</returns>
        [JwtAuthentication]
        public IHttpActionResult Delete(int id) 
        {

        
            try
            {
                
                logger.Info("Spam controller and delete spam");
                _spam.DeleteRecentPost(id);
                return Ok();
            }
            catch(Exception ex)
            {
                logger.Error("Spam#Delete!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }

        }
    }
}
