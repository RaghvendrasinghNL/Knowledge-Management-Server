using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KnowledgeManagement.Business_Layer.Interface
{
   public interface IElasticSearchService
    {
        void GetSqlData();
        List<PostRequestModel> GetSearchResult(string query);
    }
}
