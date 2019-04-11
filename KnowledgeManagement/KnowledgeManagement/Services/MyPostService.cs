using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class MyPostServices
    {
        /// <summary>
        /// It will let to see posts and also to delete them
        /// </summary>
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

      
        public IEnumerable<MyPostModel> MySeeRecentPost(int UserId)
        {
           var userInfo = CallContext.GetData("UserInfo") as UserDetails;

           /* var results = from p in db.PostTags
                          group p by p.PostId into g
                          select new Model1
                          {
                              PostId=g.Key,
                              TagId= g.Select(e => e.TagId).ToList()
                          }; */
           /* Model1 model = new Model1();
            foreach (var item in results)
            {
                model.PostId = item.PostId;
                model.Tags = item.TagId;
            }*/

            //return results;
            
           

            var result = (from l in db.Posts join p in db.PostTags on l.PostId equals p.PostId
                          join ta in db.Tags on p.TagId equals ta.TagId 

                          where l.UserId == UserId && l.IsDeleted == true
                          group p by p.PostId into g
                          let query = g.FirstOrDefault()
                          let PostId = query.Post
                          let Title = query.Post
                          let Description = query.Post
                          let PostDate = query.Post

                          //select list of tagid from PostTags where t.postid==l.postid
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
            return result; 
        }

        [CustomAuthorize]
        public void DeleteRecentPost(int UserId)
        {
            var postdelete = db.Posts.Where(s => s.PostId == UserId).FirstOrDefault();
            postdelete.IsDeleted = false;
            db.SaveChanges();

        }
    }
}