using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

namespace KnowledgeManagement.Services
{
    public class PostServices
    {
        private readonly KnowledgeManagementDevEntities db;

        public PostServices()
        {
            db = new KnowledgeManagementDevEntities();
        }
        public IEnumerable<PostRequestModel> SeeRecentPost() {
            var result = (from l in db.Posts orderby l.PostDate
                        select new PostRequestModel
                        {
                            PostDate = l.PostDate,
                            Heading = l.Heading,
                            Description = l.Description,
                            PostId = l.PostId

                        }).ToList();
            return result;

        }
    }
}