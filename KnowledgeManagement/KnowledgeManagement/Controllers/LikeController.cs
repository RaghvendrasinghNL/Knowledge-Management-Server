using KnowledgeManagement.App_Start;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Filter;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using NLog;
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
    public class LikeController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();
        private ILikeService _lp;

        public LikeController(ILikeService like)
        {
            _lp = like;
        }



        /// <summary>
        /// This function will help a user to like a post 
        /// </summary>
        /// <param name="value">Value is the object of the model and the model contains 
        /// userid and postid</param>
        /// <returns>this will return status code 200</returns>
        [JwtAuthentication]
        public IHttpActionResult Post([FromBody]LikedPostModel value)
        {
            try
            {
                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                value.UserId = userid;
                logger.Info("Like controller and liked the post");
                _lp.LikePost(value);
            

                return Ok(value);
            }
            catch(Exception ex)
            {
                logger.Error("Like#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }

      
    }
}
