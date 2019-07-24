using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class ReportCommentService : IReportCommentService

    {
        public readonly IReportCommentData _data;

        public ReportCommentService(IReportCommentData value)
        {
            _data = value;
        }

        public void EditMyComment(ReportCommentModel rp)
        {
            _data.EditMyComment(rp);
        }
    }
}
