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
        public IEnumerable<PostRequestModel> SeeRecentPost(int CategoryId)
        {
            var result = (from l in db.Posts
                          join a in db.Users on l.UserId equals a.UserId
                          where l.CategoryId == CategoryId
                          orderby l.PostDate

                          select new PostRequestModel
                          {
                              //remove post id 

                              Name = a.FirstName,
                              PostDate = l.PostDate,
                              Title = l.Title,
                              Description = l.Description,
                              PostId = l.PostId

                          }).ToList();
            foreach (PostRequestModel p in result)
            {
                p.Likes = (from posts in db.Likes
                           where posts.PostId == p.PostId
                           select posts.UserId).Count();

            }
            return result;

            /*
            var result = (from l in db.Posts
                          join a in db.Users on l.UserId equals a.UserId
                          where l.CategoryId == CategoryId
                          orderby l.PostDate
                          join b in db.Likes on l.PostId equals b.PostId
                          group  b by b.PostId into grp

                          select new PostRequestModel
                          {
                              //remove post id 
                              PostId = grp.Key,
                              UserId = grp.Count(),
                              Name = a.FirstName,
                              PostDate = l.PostDate,
                              Title = l.Title,
                              Description = l.Description,
                              PostId = l.PostId

                          }).ToList();

            return result;

        }*/


        }

        public void GetPaginatedPosts(List<Post> posts, int pageNumber)
        {
            posts.Skip((pageNumber - 1) * PageSize).Take(PageSize).ToList();
            
        } 
        }
    }
