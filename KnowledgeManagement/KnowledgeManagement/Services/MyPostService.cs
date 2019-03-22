using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class MyPostServices
    {
        private readonly KnowledgeManagementDevEntities db;

        public MyPostServices()
        {
            db = new KnowledgeManagementDevEntities();
        }

        public IEnumerable<MyPostModel> MySeeRecentPost(int UserId)
        {
            var result = (from l in db.Posts
                          where l.UserId == UserId
                          select new MyPostModel
                          {
                              PostId = l.PostId,
                              Title =l.Title,
                              Description =l.Description,
                             // Tags = l.PostTags,
                              PostDate = l.PostDate
                          }).ToList();
            return result;
        }
    }
}