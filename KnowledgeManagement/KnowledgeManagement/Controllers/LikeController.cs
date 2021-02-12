using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Filter;
using KnowledgeManagement.Models;
using NLog;
using System;
using System.Security.Claims;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class LikeController : ApiController
    {
        

        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();
        private readonly ILikeService _lp;

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
                var identity = (ClaimsIdentity)User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userid = Int32.Parse(userIdClaim?.Value);
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
