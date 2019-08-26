using KnowledgeManagement.App_Start;
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

namespace KnowledgeManagement.Controllers
{
    public class AddTagsController : ApiController
    {
        // TagsService addTags = new TagsService();
        //AddTagsByModeratorService atbm = new AddTagsByModeratorService();
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();
        private IAddTagsService _at;

        public AddTagsController(IAddTagsService value)
        {
            _at = value;
        }



        [JwtAuthentication]
        public IHttpActionResult Get( )
        {
            try
            {
                
                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                logger.Info("AddTags controller and reurning result");

                return Ok(_at.GetTags(userid));
            }
            catch(Exception ex)
            {
                logger.Error("AddTags#Get!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }

        }


        [JwtAuthentication]
        public IHttpActionResult Post([FromBody]TagsModel tag)
        {
            try
            {

                string username = string.Empty;
                string userId = string.Empty;
                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                logger.Info("AddTags controller and reurning result");

                if (tag.TagName.Equals(null))
                {
                    return BadRequest("Enter TagName");
                }


                else
                {
                    var f = _at.AddTags(tag);
                    if (f == true)
                    {


                        return Ok(tag);


                    }
                    else
                    {
                        return BadRequest("Tag already exist");
                    }

                }
            }
            catch(Exception ex)
            {
                logger.Error("AddTags#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }
       

        


    }

}
