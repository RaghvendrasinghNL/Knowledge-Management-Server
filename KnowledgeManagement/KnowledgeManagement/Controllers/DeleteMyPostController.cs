﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class DeleteMyPostController : ApiController
    {

        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        
        public IHttpActionResult Put(int id) // PostId
        {
            var postdelete = db.Posts.Where(s => s.PostId == id).FirstOrDefault();
            postdelete.IsDeleted = false;
            db.SaveChanges();
            return Ok();
        }
    }
}
