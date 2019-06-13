using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class LikedPostServices
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        public List<MyPostModel> DisplaylikedPost(int UserId)
        {
            var likedpost = (from l in db.Likes
                             where l.UserId == UserId
                             select l).ToList();
            List<MyPostModel> MyPost = new List<MyPostModel>();
            foreach (var x in likedpost)
            {
                var posts = (from p in db.Posts where p.PostId == x.PostId
                                                 select new MyPostModel
                                                 {
                                                     Title = p.Title,
                                                     Description = p.Description,
                                                     PostId = p.PostId,
                                                     PostDate = p.PostDate,
                                                     FirstName = p.User.FirstName,
                                                     Image = p.UserImage,
                                                     Likes= p.Likes.Count(),
                                                     
                                                    
                                                     
                                                 }).ToList();
                MyPost.AddRange(posts);

            }
            return MyPost;
        }



    }
}