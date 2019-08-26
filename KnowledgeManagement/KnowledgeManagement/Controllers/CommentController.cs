using KnowledgeManagement.App_Start;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Filter;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using NLog;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Http;



namespace KnowledgeManagement.Controllers
{
    public class CommentController : ApiController
    {
        //CommentService commentService = new CommentService();
        public ICommentService _commentService;
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();

        public CommentController(ICommentService val)
        {
            _commentService = val;
        }


        /// <summary>
        /// This method will fetch comment on a single post 
        /// </summary>
        /// <param name="id">It will have podt id as the parameter to get the comment on that paticular post.</param>
        /// <returns>A list of comments in the given post</returns>
        [JwtAuthentication]
        public HttpResponseMessage Get(int id)
        {
            try
            {
                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                logger.Info("Comment controller and list of comment for that post");
                var result = _commentService.GetCommentById(id);
                return Request.CreateResponse(HttpStatusCode.OK, result) ;
            }
            catch(Exception ex)
            {
                logger.Error("Comment#Get!!BadRequest" + ex);
                return Request.CreateResponse(HttpStatusCode.BadRequest);
            }
        }

        /// <summary>
        /// It will let the user to comment on a Post
        /// </summary>
        /// <param name="comment">Comment is the object of the model and will request Content,UserId,CommentDate,PostId,Name</param>
        /// <returns> This will return status code 200 </returns>
        [JwtAuthentication]
        public IHttpActionResult Post([FromBody]CommentModel comment)
        {
            try
            {
                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                logger.Info("Comment controller and add comment");
                comment.UserId = userid;

                if (comment.Content.Equals(null))
                {
                    return BadRequest("Enter Comment");
                }
                if (comment.PostId.Equals(null))
                {
                    return BadRequest("Enter PostId");
                }
                else
                {
                    _commentService.AddComment(comment);
                    return Ok();
                }
            }
            catch(Exception ex)
            {
                logger.Error("Comment#Post!!BadRequest" + ex);
                return BadRequest("Exception - "+ex);
            }

        }

        [JwtAuthentication]
        public IHttpActionResult Put([FromBody] CommentModel editComment)
        {
            try
            {
                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                logger.Info("Comment controller and modify comment");

                var newComment = _commentService.EditMyComment(editComment);
                if (newComment)
                {
                    return Ok();
                }
                else
                    return NotFound();
            }
            catch(Exception ex)
            {
                logger.Error("Comment#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }

    }
}