﻿using KnowledgeManagement.App_Start;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
//using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Service;
using NLog;
using System.Security.Claims;

namespace KnowledgeManagement.Controllers
{
    public class ReportCommentController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        // CommentService cs = new CommentService();
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();


        public readonly IReportCommentService _data;

        public ReportCommentController(IReportCommentService value)
        {
            _data = value;
        }

        // POST: api/default
        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]ReportCommentModel report)
        {
            try
            {
                var identity = (ClaimsIdentity)User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userid = Int32.Parse(userIdClaim?.Value);
                logger.Info("Report controller and Report comment");

                _data.EditMyComment(report);
                return Ok();
            }
            catch(Exception ex)
            {

                logger.Error("ReportCommentt#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }

        }

    }   
}
