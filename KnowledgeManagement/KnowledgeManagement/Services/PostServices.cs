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
        private int PageSize = 5;
        public PostServices()
        {
            db = new KnowledgeManagementDevEntities();
        }
        public IEnumerable<PostRequestModel> SeeRecentPost() {
            var result = (from l in db.Posts orderby l.PostDate
                        select new PostRequestModel
                        {
                            PostDate = l.PostDate,
                            Title = l.Title,
                            Description = l.Description,
                            PostId = l.PostId

                        }).ToList();
            return result;

        }

        public void GetPaginatedPosts(List<Post> posts, int pageNumber)
        {
            posts.Skip((pageNumber - 1) * PageSize).Take(PageSize).ToList();
            
        }
    }
}