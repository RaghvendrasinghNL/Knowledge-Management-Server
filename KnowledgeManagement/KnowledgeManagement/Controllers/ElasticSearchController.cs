using Elasticsearch.Net;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Business_Layer.Service;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class ElasticSearchController : ApiController
    {
        private readonly string Url = "http://localhost:9200";

        private readonly IElasticSearchService _elasticClient;

        public ElasticSearchController(IElasticSearchService value)
        {
            _elasticClient = value;
        }
        /// <summary>
        /// This function will take a string as a parameter and will search all the post by
        /// there title and tags
        /// </summary>
        /// <param name="query">It will return status code 200</param>
        /// <returns></returns>
        public IHttpActionResult Get(string query)
        {
            var uri = new Uri(Url);
            //var elasticClient = new ElasticSearch();
            // return Ok(elasticClient.GetSearchedResult(query));
            return Ok(_elasticClient.GetSearchedResult(query));
        }

       

       /// <summary>
       /// This will migrate the data from sql DB to elasticsearch DB
       /// </summary>
        public void Post()
        {
            // var elasticClient = new ElasticSearch();
            // elasticClient.GetSqlData();
            _elasticClient.GetSqlData();

        }

       
    }
}
