using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class ReportcommentService : IReportCommentService

    {
        public readonly IReportcommentData _data;

        public ReportcommentService(IReportcommentData value)
        {
            _data = value;
        }

        public bool EditMyComment(ReportCommentModel rp)
        {
           return _data.EditMyComment(rp);
        }
    }
}
