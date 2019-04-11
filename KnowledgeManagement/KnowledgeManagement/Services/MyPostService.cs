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

       [CustomAuthorize]
        public IEnumerable<MyPostModel> MySeeRecentPost(int UserId)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            var result = (from l in db.Posts join t in db.PostTags on l.PostId equals t.PostId
                          join ta in db.Tags on t.TagId equals ta.TagId
                          
                          where l.UserId == UserId && l.IsDeleted == true 

                          select new MyPostModel

                          {
                              FirstName = userInfo.FirstName,
                              PostId = l.PostId,
                              Title =l.Title,
                              Description =l.Description,
                              //Tags 
                              PostDate = l.PostDate
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