using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nest;

namespace ElasticSearchTest
{
    class TestElasticSearch
    {
        private readonly string Url = "http://localhost:9200";

        public IElasticClient GetElasticClient()
        {
            var uri = new Uri(Url);
            IElasticClient elasticClient = new ElasticClient(uri);
            return elasticClient;
        }

        public void CreateIndex(string indexName)
        {
            var result = GetElasticClient().CreateIndex(indexName);
        }

        public void InsertData(string indexName, string typeName, BlogPost post)
        {

            //            GetElasticClient().Index(post, p => p.Index(indexName).Type(typeof(BlogPost)).Id(post.Id));
            var res = GetElasticClient().Index(post, p => p.Index(indexName).Type(typeName).Id(post.Id));
        }

        public List<BlogPost> GetAllRecords(string indexName,string typeName)
        {
            //  var searchRequest = new SearchRequest();
            // searchRequest.

            //var res =  GetElasticClient().Search<BlogPost>(searchRequest);

            var res = GetElasticClient().Search<BlogPost>(s => s.Index(indexName)
            .Type(typeName).
            From(0).
            Size(5).
            Query(q => q.MatchAll()
            ));

            var records = new List<BlogPost>();

            foreach (var item in res.Hits)
            {
                records.Add(item.Source);
            }
            return records;
        }

        public BlogPost GetDocumentById(string indexName, string typeName, string id)
        {
            var getRequest = new GetRequest(indexName, typeName, id);

            var res = GetElasticClient().Get<BlogPost>(getRequest);

            return res.Source;
        }
    }
}
