using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System.Collections.Generic;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;



namespace KnowledgeManagement.Controllers
{
    public class CommentController : ApiController
    {
        CommentService commentService = new CommentService();
        /// <summary>
        /// This method will fetch comment on a single post 
        /// </summary>
        /// <param name="id">It will have podt id as the parameter to get the comment on that paticular post.</param>
        /// <returns>A list of comments in the given post</returns>
        public List<CommentModel> Get(int id)
        {
            var result = commentService.GetCommentById(id);
            return result;
        }

        /// <summary>
        /// It will let the user to comment on a Post
        /// </summary>
        /// <param name="comment">Comment is the object of the model and will request Content,UserId,CommentDate,PostId,Name</param>
        /// <returns> This will return status code 200 </returns>
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]CommentModel comment)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            comment.UserId = userInfo.UserId;
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
                commentService.AddComment(comment);
                return Ok();
            }

        }

        [CustomAuthorize]
        public IHttpActionResult Put([FromBody] CommentModel editComment)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            editComment.UserId = userInfo.UserId;
            var newComment = commentService.EditMyComment(editComment);
            if (newComment)
            {
                return Ok();
            }
            else
                return NotFound();
        }

    }
}