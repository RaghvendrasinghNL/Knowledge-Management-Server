using KnowledgeManagement.Models;
using System.Collections.Generic;
using System.Linq;

namespace KnowledgeManagement.Services
{
    public class SpamServices
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        /// <summary>
        /// This will add new entry to the post table and will also add 
        /// to notification table for gentrating notifications
        /// </summary>
        /// <param name="Spam">this will take SpamModel as parameter</param>
        public void AddNewSpam(SpamModel Spam)
        {
            Report report = new Report
            {
                PostId = Spam.PostId,
                Comment = Spam.Comment,
                UserId = Spam.UserId,
                Isread = 0
            };
            db.Reports.Add(report);

            Notification notif = new Notification
            {
                NotificationType = 2,
                IsRead = 0,
                PostId = Spam.PostId,
                UserId = Spam.UserId
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