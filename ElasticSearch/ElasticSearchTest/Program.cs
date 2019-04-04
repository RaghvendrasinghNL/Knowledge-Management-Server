using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElasticSearchTest
{
    class Program
    {
        private static TestElasticSearch elasticSearch;

        static void Main(string[] args)
        {
            Console.WriteLine(" app started");
            elasticSearch = new TestElasticSearch();

            // to create a index
            //  elasticSearch.CreateIndex("test");

            // to insert a data in elastic

            //elasticSearch.InsertData("data", "post", new BlogPost
            //{
            //    Id = Guid.NewGuid(),
            //    Body = "this is a body",
            //    Title  ="this is a title"

            //});

            // to get a record by id
            //var result = elasticSearch.GetDocumentById("data", "post", "23a4d00f-7c57-481c-8461-1c3fe5747e07");

            //Console.WriteLine($"Result : {result}");

            // get all records from search api
            var results = elasticSearch.GetAllRecords("data","post");
            foreach (var item in results)
            {
                Console.WriteLine($"Result : {item}");
            }
            Console.ReadLine();
        }
    }
}
