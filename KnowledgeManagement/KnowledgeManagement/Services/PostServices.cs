using KnowledgeManagement.Models;
using System.Collections.Generic;
using System.Linq;

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
        public IEnumerable<PostRequestModel> SeeRecentPost(int CategoryId, int UserId)
        {
             var result = (from l in db.Posts
                            join a in db.Users on l.UserId equals a.UserId
                            where l.CategoryId == CategoryId
                            
                            select new PostRequestModel
                            {
                                Name = a.FirstName,
                                PostDate = l.PostDate,
                                Title = l.Title,
                                Description = l.Description,
                                PostId = l.PostId,
                                Image= l.UserImage,

                            }).ToList();


              foreach (var item in result)
              {
                  var data = db.Likes.FirstOrDefault(l => l.UserId == UserId && l.PostId == item.PostId);
                  if (data == null)
                      item.IsLiked = 0;
                  else
                      item.IsLiked = 1;
              }


              foreach (PostRequestModel p in result)
              {
                  p.Likes = (from posts in db.Likes
                             where posts.PostId == p.PostId
                             select posts.UserId).Count();

              }

               foreach (var posts in result)
              {
                  posts.Count = (from c in db.Comments
                             where c.PostId == posts.PostId
                             select c.PostId).Count();

              }
            foreach (var x in result)
            {
                x.TagName = (from posttags in db.PostTags
                             join tag in db.Tags on posttags.TagId equals tag.TagId
                             where posttags.PostId == x.PostId
                             select tag.TagName).ToList();
            }
              return result;

      
        }

        public void GetPaginatedPosts(List<Post> posts, int pageNumber)
        {
            posts.Skip((pageNumber - 1) * PageSize).Take(PageSize).ToList();

        }
    }
}
