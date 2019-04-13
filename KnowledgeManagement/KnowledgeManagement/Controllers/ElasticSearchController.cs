using Elasticsearch.Net;
using KnowledgeManagement.Services;
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
        // GET: api/ElasticSearch
        public IHttpActionResult Get(string query)
        {
            var uri = new Uri(Url);
            var elasticClient = new ElasticSearch();

            
            return Ok(elasticClient.GetSearchedResult(query));

           
        //   return Ok(elasticClient.GetSqlData());

        }

        // GET: api/ElasticSearch/5
        public string Get(int id)
        {
            return "value";
        }

        /// <summary>
        /// Api to migrate sql data to elastic.
        /// </summary>
        public void Post()
        {
            var elasticClient = new ElasticSearch();

            elasticClient.GetSqlData();
        }

        // PUT: api/ElasticSearch/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/ElasticSearch/5
        public void Delete(int id)
        {
        }
    }
}
