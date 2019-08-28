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
using System.Security.Claims;

namespace KnowledgeManagement.Controllers
{
    public class AddTagsController : ApiController
    {
        
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

                var identity = (ClaimsIdentity)User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userid = Int32.Parse(userIdClaim?.Value);
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
                var identity = (ClaimsIdentity)User.Identity;
                var userIdClaim = identity.FindFirst(ClaimTypes.UserData);
                int userid = Int32.Parse(userIdClaim?.Value);
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
