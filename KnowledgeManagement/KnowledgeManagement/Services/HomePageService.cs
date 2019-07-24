using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class HomePageService
    {
        private readonly KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        
        

        public IEnumerable<PostRequestModel> HomePagePost(int UserId, int CategoryId, SortingType sortingtype, FilterType filtertype)
        {
            var result = (from l in db.Posts
                          join a in db.Users on l.UserId equals a.UserId
                          where l.CategoryId == CategoryId && l.IsDeleted == true
                          orderby l.PostDate descending

                          select new PostRequestModel
                          {
                              Name = a.FirstName,
                              PostDate = l.PostDate,
                              Title = l.Title,
                              Description = l.Description,
                              PostId = l.PostId,
                              Image = l.UserImage,

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





            if (filtertype == FilterType.RecentPost)
            {

                if (sortingtype == SortingType.MaxLikes)
                {
                    return result.OrderByDescending(r => r.Likes).ToList();
                }
                else if(sortingtype == SortingType.MaxComments)
                {
                    return result.OrderByDescending(r => r.Count).ToList();
                }
                return result;

            }
            else if(filtertype == FilterType.ByLikedPost)
            {

                
                var LikedPost = (from l in db.Likes
                                 where l.UserId == UserId
                                 select l
                                 ).ToList();
                List<PostRequestModel> MyPost = new List<PostRequestModel>();

                foreach (var m in LikedPost)
                {
                    var LikedPosts = (from k in result
                                      where m.PostId == k.PostId
                                      select k).ToList();
                    MyPost.AddRange(LikedPosts);
                }

                if (sortingtype == SortingType.MaxLikes)
                {
                    return MyPost.OrderByDescending(r => r.Likes).ToList();
                }
                else if (sortingtype == SortingType.MaxComments)
                {
                    return MyPost.OrderByDescending(r => r.Count).ToList();
                }

                return MyPost;
            }




            
            else
            {
                return null;
            }
           



        }
    }
}
