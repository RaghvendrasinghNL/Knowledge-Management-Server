using KnowledgeManagement.Models;
using KnowledgeManagement.Models.Entities;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class ReportcommentData : IReportcommentData
    {
       readonly KnowledgeManagementEntities db = new KnowledgeManagementEntities();

        public bool EditMyComment(ReportCommentModel reportComment)
        {
            CommentReport commentReport = new CommentReport();
            commentReport.Comment = reportComment.Comment;
            commentReport.CommentId = reportComment.CommmentId;

            db.SaveChanges();
            return true;

        }
    }
}