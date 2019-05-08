using KnowledgeManagement.Models;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;

namespace KnowledgeManagement.Services
{
    public class ElasticSearch
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        private readonly string Url = "http://localhost:9200";
        private readonly string IndexName = "new";
        private readonly string TypePost = "value";


        /// <summary>
        /// This will set up the connection with the elastic Search DB
        /// </summary>
        /// <returns> It will return the object if the connection is successful</returns>
        public IElasticClient GetElasticClient()
        {
            var uri = new Uri(Url);
            IElasticClient elasticClient = new ElasticClient(uri);
            return elasticClient;
        }


        /// <summary>
        /// This will insert data into ElasticSearch DB with the given indexname ,typename
        /// and will add all the according to the model  
        /// </summary>
        /// <param name="indexName">indexname is provided to refer a index in elasticsearch DB</param>
        /// <param name="typeName">For indicating in which type we want to enter </param>
        /// <param name="post">it is an object which have all the atributes to be added</param>
        public void InsertData(string indexName, string typeName, ElasticSearchModel post)
        {
            var res = GetElasticClient().Index(post, p => p.Index(indexName).Type(typeName).Id(post.PostId));
        }


        public void GetSqlData()
        {

            var inter_res = from t in db.Tags
                            join pt in db.PostTags on t.TagId equals pt.TagId
                            join ps in db.Posts on pt.PostId equals ps.PostId
                            select new
                            {
                                ps.PostId,
                                ps.Title,
                                t.TagName,
                            };

            var res = (from ir in inter_res
                       group ir by ir.PostId into g
                       select new ElasticSearchModel
                       {
                           PostId = g.Key,
                           Title = g.Select(e => e.Title).FirstOrDefault(),
                           Tags = g.Select(e => e.TagName).ToList()
                       }).ToList();

            foreach (var x in res)
            {
                var r = GetElasticClient().Index(x, p => p.Index(IndexName).Type(TypePost).Id(x.PostId));
            }
        }

        /// <summary>
        /// This method will search all post related to the query entered 
        /// </summary>
        /// <param name="query">The phrase on which the search need to be performed</param>
        /// <returns></returns>
        public List<ElasticSearchModel> GetAllRecords(string query)
        {
            var res = GetElasticClient().Search<ElasticSearchModel>(s => s.Index(IndexName)
            .Type(TypePost).From(0).Size(20).
           Query(q => q.MultiMatch(c => c.Fields(f => f.Field(p => p.Title).Fields(w => w.Tags)).Query(query))));


            var records = new List<ElasticSearchModel>();

            foreach (var item in res.Hits)
            {
                records.Add(item.Source);
            }
            return records;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="query"></param>
        /// <returns></returns>
        public List<PostRequestModel> GetSearchedResult(string query)
        {

            ///get all record from elastic for given search criteria
            var results = GetAllRecords(query);
            List<PostRequestModel> data = new List<PostRequestModel>();
            // this result will get matched to fetch record from database with matching postIds
            foreach (var p in results)
            {

                var postRecord = (from s in db.Posts
                                  join u in db.Users on s.UserId equals u.UserId
                                  where s.PostId == p.PostId
                                  select new PostRequestModel
                                  {
                                      PostId = s.PostId,
                                      Title = s.Title,
                                      Description = s.Description,
                                      PostDate = s.PostDate,
                                      Name = u.FirstName,
                                      Image = s.UserImage

                                  }).FirstOrDefault();


                postRecord.TagName = (from posttags in db.PostTags
                                      join tag in db.Tags on posttags.TagId equals tag.TagId
                                      where posttags.PostId == postRecord.PostId
                                      select tag.TagName).ToList();



                postRecord.Likes = (from posts in db.Likes
                                    where posts.PostId == postRecord.PostId
                                    select posts.UserId).Count();

                data.Add(postRecord);


            }
            // finally create model of PostRequestModel

            return data;
        }



    }
}