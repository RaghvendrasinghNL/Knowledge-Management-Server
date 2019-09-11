using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PagedList;
using KnowledgeManagement.Models.Entities;

namespace KnowledgeManagement.Repository.Service
{
    public class HomePageData : IHomePageData
    {
        private readonly KnowledgeManagementContext db = new KnowledgeManagementContext();
        




        public IEnumerable<PostRequestModel> HomePagePost(int UserId, int CategoryId, SortingType sortingtype, FilterType filtertype)
        {
            var result = (from l in db.Posts
                          join a in db.Users on l.UserId equals a.UserId
                          where l.CategoryId == CategoryId && l.IsDeleted && !(db.Reports.Any(r => r.PostId == l.PostId && r.UserId == UserId))

                          orderby l.PostDate descending

                          select new PostRequestModel
                          {
                              Name = a.FirstName,
                              PostDate = l.PostDate,
                              Title = l.Title,
                              Description = l.Description,
                              PostId = l.PostId,
                              Image = l.UserImage,

                             
                              TagName = db.PostTags.Where(w => w.PostId == l.PostId)
                              .Select(s => s.Tag.TagName).ToList(),
                              Likes = db.Likes.Where(w => w.PostId == l.PostId).Count(),
                              Count = db.Comments.Where(w => w.PostId == l.PostId).Count()
                          }).ToList();


            foreach (var item in result)
            {
                var data = db.Likes.FirstOrDefault(l => l.UserId == UserId && l.PostId == item.PostId);
                if (data == null)
                    item.IsLiked = 0;
                else
                    item.IsLiked = 1;
            }


            return GetResultFilteredAndSorting(UserId, filtertype, sortingtype, result);

        }

        private IEnumerable<PostRequestModel> GetResultFilteredAndSorting(int userId, FilterType filterType, SortingType sortingType, List<PostRequestModel> result)
        {

            if (filterType == FilterType.RecentPost)
            {

                if (sortingType == SortingType.MaxLikes)
                {
                    return result.OrderByDescending(r => r.Likes).ToList();
                }
                else if (sortingType == SortingType.MaxComments)
                {
                    return result.OrderByDescending(r => r.Count).ToList();
                }
                return result;
            }
            else if (filterType == FilterType.ByLikedPost)
            {

                var LikedPost = (from l in db.Likes
                                 where l.UserId == userId
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

                if (sortingType == SortingType.MaxLikes)
                {
                    return MyPost.OrderByDescending(r => r.Likes).ToList();
                }
                else if (sortingType == SortingType.MaxComments)
                {
                    return MyPost.OrderByDescending(r => r.Count).ToList();
                }

                return MyPost;
            }
            return result;
        }
    }
}
