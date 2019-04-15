﻿using KnowledgeManagement.App_Start;
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
    public class CommentController : ApiController
    {
        CommentService commentService = new CommentService();
        
       

        
        public List<CommentModel> Get(int id)
        {

            var result = commentService.GetCommentById(id); // PostID
           
            return result;
        }
        /// <summary>
        /// It will let the user to comment on Post
        /// </summary>
        /// <param name="comment">The Model will request Content,UserId,CommentDate,PostId,Name</param>
        /// <returns>Help user to comment on a post </returns>
        
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]CommentModel comment)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            comment.UserId = userInfo.UserId;           
            
            commentService.AddComment(comment);         
            return Ok();
        }

     
    }
}