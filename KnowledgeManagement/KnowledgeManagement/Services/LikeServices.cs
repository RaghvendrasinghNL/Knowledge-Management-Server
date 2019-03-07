using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class LikeServices
    {
        private readonly KnowledgeManagementDevEntities db;

        public LikeServices()
        {
            db = new KnowledgeManagementDevEntities();
        }

        public IEnumerable<CountLikedPost> LikedPostCount(int PostId) 
            {
            
            var countLike = (from l in db.Likes
                             group l by l.PostId into grp
                             select new CountLikedPost
                             { PostId = grp.Key,
                                 UserId = grp.Count()
                             }).ToList();
           
            return countLike;

        }

        
    }


    }

}