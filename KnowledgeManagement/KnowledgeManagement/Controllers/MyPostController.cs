using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Filter;
using System.Web;
using System;
using NLog;
using System.Security.Claims;

namespace KnowledgeManagement.Controllers
{
    public class MyPostController : ApiController
    {

       
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();

        private readonly IMyPostService _myPost;
        
        public MyPostController(IMyPostService res)
        {
            _myPost = res;
        }


        /// <summary>
        /// This method will add a post in post table
        /// </summary>
        /// <param name="AddPost">Will take title,description, tags, userimage,categoryid , userid as parameter </param>
        /// <returns>return a staus code of 200 </returns>

        [JwtAuthentication]
        public IHttpActionResult Post([FromBody]AddPostRequestModel AddPost)
        {
         
            try
            {
                
                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                AddPost.UserId = userid;
                logger.Info("MyPost controller and adding new post");

                if (AddPost.Title.Equals(null))
                {
                    return BadRequest("Enter the title");
                }
                if (AddPost.Description.Equals(null))
                {
                    return BadRequest("Enter Description");
                }
                if (AddPost.Tags.Equals(null))
                {
                    return BadRequest("Enter Tags");
                }
                _myPost.AddNewPost(AddPost);
                return Ok();
            }
            catch(Exception ex)
            {
                logger.Info("Back to MyPost controller and returing result");
                logger.Error("MyPost#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }
       


        /// <summary>
        /// It will fetch all the post that are assosiated by a particular userId
        /// </summary>
        /// <returns>List of all the posts </returns>
        [JwtAuthentication]
        public IHttpActionResult Get()
        {
        
            try
            {
                
                var identity =(ClaimsIdentity) User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userId = Int32.Parse(userIdClaim?.Value);
            
               
                logger.Info("MyPost controller and returing result");
                return Ok(_myPost.MySeeRecentPost(userId));
            }
            catch(Exception ex)
            {
                logger.Info("Back to MyPost controller and returing result");
                logger.Error("MyPost#Get!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }

        }


        [JwtAuthentication]
        public IHttpActionResult Put([FromBody] EditPostModel editPost)
        {
            try
            {

                var identity = (ClaimsIdentity)User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userid = Int32.Parse(userIdClaim?.Value);
              
                editPost.UserId = userid;
                logger.Info("MyPost controller and modifying existing post");
                var editpost = _myPost.EditMyPost(editPost);
                if (editpost)
                {
                    return Ok();
                }
                else
                    return NotFound();
            }
            catch(Exception ex)
            {
                logger.Error("MyPost#Put!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }



        /// <summary>
        /// It will let the user delete his own posts
        /// </summary>
        /// <param name="id">This model will request UserId,FirstName,PostId,Title,Description,Tags,PostDate</param>
        /// <returns>this will return status code 200</returns>
        [JwtAuthentication]
        public IHttpActionResult Delete(int id)
        {
            
            try
            {

                
                logger.Info("MyPost controller and deleting existing post");
                _myPost.DeleteRecentPost(id);
                return Ok();
            }
            catch(Exception ex)
            {
                logger.Error("MyPost#Delete!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }

        }
    }

}
