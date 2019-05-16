using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;

namespace KnowledgeManagement.Services
{
    public class MyPostServices
    {

        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        /// <summary>
        /// This will fetch recent post assosiated with a particular user and will show 
        /// name,postid,tags , title , description,tagid, postdate, image,like count and comment count
        /// </summary>
        /// <param name="UserId">This will take userId as a param and will fetch all the post
        /// related to that </param>
        /// <returns>A List of posts with all the parameters </returns>
        public IEnumerable<MyPostModel> MySeeRecentPost(int UserId)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;


            var result = (from l in db.Posts
                          join p in db.PostTags on l.PostId equals p.PostId
                          join ta in db.Tags on p.TagId equals ta.TagId
                          where l.UserId == UserId && l.IsDeleted == true
                          orderby l.PostDate descending
                          group p by p.PostId into g
                          let query = g.FirstOrDefault()
                          let PostId = query.Post
                          let Title = query.Post
                          let Description = query.Post
                          let PostDate = query.Post
                          


                          ///select list of tagid from PostTags where t.postid==l.postid
                          select new MyPostModel
                          {
                              FirstName = userInfo.FirstName,
                              PostId = PostId.PostId,
                              Title = Title.Title,
                              Description = Description.Description,
                              TagId = g.Select(e => e.TagId).ToList(),
                              TagName = g.Select(e => e.Tag.TagName).ToList(),
                              PostDate = PostDate.PostDate
                          }).ToList();

            foreach (var x in result)
            {
                x.Image = (from l in db.Posts
                           where l.PostId == x.PostId
                           select l.UserImage).FirstOrDefault();
            }

            foreach (MyPostModel y in result)
            {
                y.Likes = (from k in db.Likes
                           where k.PostId == y.PostId
                           select k.UserId).Count();
            }

            foreach (var c in result)
            {
                c.Count = (from m in db.Comments
                           where m.PostId == c.PostId
                           select m.PostId).Count();
            }
            foreach (var item in result)
            {
                var data = db.Likes.FirstOrDefault(l => l.UserId == UserId && l.PostId == item.PostId);
                if (data == null)
                    item.IsLiked = 0;
                else
                    item.IsLiked = 1;
            }
            return result;
        }


        public bool EditMyPost(EditPostModel editPost)
        {
            
            var postedit = db.Posts.Where(s => s.PostId == editPost.PostId).FirstOrDefault();
            if (postedit.UserId != editPost.UserId) {
                return false;
            }

            
            postedit.Description = editPost.Description;
            postedit.PostDate = DateTime.Now;
            db.Entry(postedit).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

            foreach (int x in editPost.Tags)
            {
                PostTag posttags = new PostTag();
                var tagexists = db.PostTags.Where(a => a.TagId == x && a.PostId == editPost.PostId);
                
                if (tagexists.Count() == 0)
                {
                    posttags.PostId = editPost.PostId;
                    posttags.TagId = x;
                    db.PostTags.Add(posttags);
                    db.SaveChanges();
                }
                else
                    continue;
            }

            return true;
        }





        /// <summary>
        /// This will delete the post which the user want to delete 
        /// </summary>
        /// <param name="PostId">It will take postId as the parameter and will change the value of isdeleted 
        /// field coresponding to that </param>
        [CustomAuthorize]
        public void DeleteRecentPost(int PostId)
        {
            var postdelete = db.Posts.Where(s => s.PostId == PostId).FirstOrDefault();
            postdelete.IsDeleted = false;
            db.SaveChanges();

        }
    }
}