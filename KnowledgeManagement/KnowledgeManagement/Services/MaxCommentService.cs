using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class MaxCommentService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        public List<PostRequestModel> MaxComments(int CategoryId, int UserId)
        {
            var result = (from p in db.Posts
                          join a in db.Users on p.UserId equals a.UserId
                          where p.CategoryId == CategoryId


                          select new PostRequestModel
                          {
                              Name = a.FirstName,
                              PostDate = p.PostDate,
                              Title = p.Title,
                              Description = p.Description,
                              PostId = p.PostId,
                              Image = p.UserImage,

                          }).ToList();

            foreach (var p in result)
            {
                p.Likes = (from posts in db.Likes
                           where posts.PostId == p.PostId
                           select posts).Count();

            }

            foreach (var item in result)
            {
                var data = db.Likes.FirstOrDefault(l => l.UserId == UserId && l.PostId == item.PostId);
                if (data == null)
                    item.IsLiked = 0;
                else
                    item.IsLiked = 1;
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

            return result.OrderByDescending(r => r.Count).ToList();

        }
    }
}