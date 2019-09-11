using KnowledgeManagement.Models;
using KnowledgeManagement.Models.Entities;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class SpamData : ISpamData
    {
        readonly KnowledgeManagementContext db = new KnowledgeManagementContext();
        /// <summary>
        /// This will add new entry to the post table and will also add 
        /// to notification table for gentrating notifications
        /// </summary>
        /// <param name="Spam">this will take SpamModel as parameter</param>
        public void AddNewSpam(SpamModel spam)
        {
            Report report = new Report
            {
                PostId = spam.PostId,
                Comment = spam.Comment,
                UserId = spam.UserId,
                Isread = 0,
                CreatedAt = DateTime.Now,
                UpdatedAt = DateTime.Now
            };
            db.Reports.Add(report);

            Notification notif = new Notification
            {
                NotificationType = 2,
                IsRead = 0,
                PostId = spam.PostId,
                UserId = spam.UserId,
                CreatedAt = DateTime.Now,
                UpdatedAt = DateTime.Now
            };
            db.Notifications.Add(notif);
            db.SaveChanges();
        }

        /// <summary>
        /// This is used to make the isdeleted bit false so as the post is no longer visible to the user
        /// </summary>
        /// <param name="PostId">This will take postId as the input </param>
        public void DeleteRecentPost(int PostId)
        {
            var rep = db.Reports.Where(s => s.PostId == PostId).FirstOrDefault();
            rep.Isread = 1;
            var postdelete = db.Posts.Where(s => s.PostId == PostId).FirstOrDefault();
            postdelete.IsDeleted = false;
            db.SaveChanges();
        }

        /// <summary>
        /// This service will fetch all the spammed posts 
        /// </summary>
        /// <returns>It will return a list of all spammed posts with all the attributes in reportrequest model</returns>
        public IEnumerable<ReportRequestModel> GetPost()
        {

            var res = (from l in db.Reports
                       orderby l.ReportId descending
                       join p in db.Posts on l.PostId equals p.PostId
                       join u in db.Users on l.UserId equals u.UserId

                       where l.Isread == 0
                       select new ReportRequestModel
                       {
                           PostId = l.PostId,
                           Name = u.FirstName,
                           Comment = l.Comment,
                           Title = p.Title,
                           Description = p.Description,
                           PostDate = p.PostDate,
                           Image = p.UserImage,
                       }).ToList();

            return res;

        }
    }
}