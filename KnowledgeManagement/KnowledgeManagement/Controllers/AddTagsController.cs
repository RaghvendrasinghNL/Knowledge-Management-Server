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

namespace KnowledgeManagement.Controllers
{
    public class AddTagsController : ApiController
    {
        // TagsService addTags = new TagsService();
        //AddTagsByModeratorService atbm = new AddTagsByModeratorService();

        private IAddTagsService _at;

        public AddTagsController(IAddTagsService value)
        {
            _at = value;
        }



        [CustomAuthorize]
        public IHttpActionResult Get( )
        {

            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var userid = userInfo.UserId;
            return Ok(_at.GetTags(userid));

        }


        [CustomAuthorize]
        public IHttpActionResult Post([FromBody]TagsModel tag)
        {
            
            if (tag.TagName.Equals(null))
            {
                return BadRequest("Enter TagName");
            }
            
            
            else
            {
                 var f= _at.AddTags(tag);
                if (f == true)
                {


                    return Ok(tag.TagId);
                    // return Json(tag.TagId);
       
                    
                }
                else
                {
                    return BadRequest("Tag already exist");
                }
                
            }
        }
       

        


    }

}
