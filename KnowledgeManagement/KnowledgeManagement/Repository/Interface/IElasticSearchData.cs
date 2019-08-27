using KnowledgeManagement.Models;
using System.Collections.Generic;

namespace KnowledgeManagement.Repository.Interface
{
    public interface IElasticSearchData
    {
        void GetSqlData();
        List<PostRequestModel> GetSearchResult(string query);
    }
}
