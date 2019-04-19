using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class SpamServices
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        public void AddNewSpam(SpamModel Spam)
        {
            Report report = new Report();

            //report.ReportId = Spam.ReportId;
            //report.UserId = Spam.UserId;
            report.PostId = Spam.PostId;
            report.Comment = Spam.Comment;
            report.UserId = Spam.UserId;
            db.Reports.Add(report);
             
            Notification notif = new Notification();
           
            notif.NotificationType = 2; 
            notif.IsRead = 0;
            notif.PostId = Spam.PostId;
            notif.UserId = Spam.UserId;
            db.Notifications.Add(notif);
            db.SaveChanges();
        }
    }
}