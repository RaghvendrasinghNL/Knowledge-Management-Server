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
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        [CustomAuthorize]
        public IQueryable<Model1> MySeeRecentPost(int UserId)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;

            var results = from p in db.PostTags
                          group p by p.PostId into g
                          select new Model1
                          {
                              PostId = g.Key,
                              TagId = g.Select(e => e.TagId).ToList()
                          };
            /* Model1 model = new Model1();
             foreach (var item in results)
             {
                 model.PostId = item.PostId;
                 model.Tags = item.TagId;
             }*/

            return results;

            /*

            var result = (from l in db.Posts join p in db.PostTags on l.PostId equals p.PostId
                          join ta in db.Tags on t.TagId equals ta.TagId

                          where l.UserId == UserId && l.IsDeleted == true 
            //select list of tagid from PostTags where t.postid==l.postid
            select new MyPostModel

                          {
                              FirstName = userInfo.FirstName,
                              PostId = l.PostId,
                              Title = l.Title,
                              Description = l.Description,
                              //TagId = t.TagId, 
                              PostDate = l.PostDate
                          }).ToList();
            return result; */
        }


    }
}