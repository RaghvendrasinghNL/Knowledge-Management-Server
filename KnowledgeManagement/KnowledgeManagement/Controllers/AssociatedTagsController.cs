﻿using KnowledgeManagement.App_Start;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Filter;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Security.Claims;
using System.Web;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class AssociatedTagsController : ApiController
    {

        //AssociatedTagsService ats = new AssociatedTagsService();

        private readonly IAssociatedTagsService _at;

        public AssociatedTagsController(IAssociatedTagsService value)
        {
            _at = value;
        }

        [JwtAuthentication]
        public IHttpActionResult Post([FromBody]AssociatedTagModel associatedTag)
        {
            var identity = (ClaimsIdentity)User.Identity;
            var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
            int userid = Int32.Parse(userIdClaim?.Value);
            _at.AddAssociatedTags(associatedTag);
            return Ok();
        }



        [JwtAuthentication]
        public IHttpActionResult Get()
        {
            string username = string.Empty;
            string userId = string.Empty;
            var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
            JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
            int userid = Int32.Parse(userId);
            _at.GetAssociatedTags(userid);
            return Ok();

        }
    }
}
