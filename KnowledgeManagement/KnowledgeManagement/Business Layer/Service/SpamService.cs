using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class SpamService : ISpamService
    {
        public readonly ISpamData _data;

        public SpamService(ISpamData value)
        {
            _data = value;
        }

        public void AddNewSpam(SpamModel spam)
        {
            _data.AddNewSpam(spam);
        }

        public void DeleteRecentPost(int PostId)
        {
            _data.DeleteRecentPost(PostId);
        }

       public IEnumerable<ReportRequestModel> GetPost()
        {
            return _data.GetPost();
        }
    }
}