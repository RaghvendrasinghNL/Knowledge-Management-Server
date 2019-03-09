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

        public IEnumerable<MyPostModel> SeeRecentPost()
        {
            var result = (from l in db.Posts

                          select new MyPostModel
                          {


                          }).ToList();
            return result;
        }
    }
}