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
            db.SaveChanges();
        }
    }
}