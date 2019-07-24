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
                                                         Likes= p.Likes.Count()



                                                     }).ToList();
                    MyPost.AddRange(posts);

                }

                foreach (var y in MyPost)
                {
                    var TagName = (from posttags in db.PostTags
                                join tag in db.Tags on posttags.TagId equals tag.TagId
                                where posttags.PostId == y.PostId
                                select tag.TagName).ToList();

                 y.TagName = TagName;
                 var TagId = (from posttags in db.PostTags
                                join tag in db.Tags on posttags.TagId equals tag.TagId
                                where posttags.PostId == y.PostId
                                select tag.TagId).ToList();
                 y.TagId = TagId;

             }

              foreach (var k in MyPost)
             {
                 k.Count = (from c in db.Comments
                            where c.PostId == k.PostId
                            select c.PostId).Count();
             }
             foreach (var item in MyPost)
             {
                 var data = db.Likes.FirstOrDefault(l => l.UserId == UserId && l.PostId == item.PostId);
                 if (data == null)
                     item.IsLiked = 0;
                 else
                     item.IsLiked = 1;
             }

             foreach (var p in MyPost)
             {
                 p.Likes = (from posts in db.Likes
                            where posts.PostId == p.PostId
                            select posts.UserId).Count();

             }





             return MyPost;
         }
       

    }
}