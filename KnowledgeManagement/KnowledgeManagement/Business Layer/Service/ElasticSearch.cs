using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class ElasticSearch : IElasticSearchService
    {
        public readonly IElasticSearchData _data;

        public ElasticSearch(IElasticSearchData value)
        {
            _data = value;
        }

        public void GetSqlData()
        {
            _data.GetSqlData();
        }

        public List<PostRequestModel> GetSearchedResult(string query)
        {
            return _data.GetSearchedResult(query);
        }





    }
}