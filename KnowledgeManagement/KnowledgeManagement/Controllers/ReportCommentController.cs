using KnowledgeManagement.Models;
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
using KnowledgeManagement.Business_Layer.Interface;

namespace KnowledgeManagement.Controllers
{
    public class ReportCommentController : ApiController
    {
        
       
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();


        public readonly IReportCommentService _data;

     public ReportCommentController(IReportCommentService value)
        {
            _data = value;
        }

        // POST: api/default
     
        public IHttpActionResult Post([FromBody]ReportCommentModel report)
        {
            try
            {
             
                logger.Info("Report controller and Report comment");

         
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
