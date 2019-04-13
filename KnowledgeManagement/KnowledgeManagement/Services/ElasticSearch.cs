using KnowledgeManagement.Models;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class ElasticSearch
    {

        private readonly string Url = "http://localhost:9200";

        private readonly string IndexName = "knowledge_management";
        private readonly string TypePost = "post";

        public IElasticClient GetElasticClient()
        {
            var uri = new Uri(Url);
            IElasticClient elasticClient = new ElasticClient(uri);
            return elasticClient;
        }
        /* public void CreateIndex(string IndexName)
         {
             var reuslt = GetElasticClient().CreateIndex(IndexName);
         }*/
        public void InsertData(string indexName, string typeName, ElasticSearchModel post)
        {
            var res = GetElasticClient().Index(post, p => p.Index(indexName).Type(typeName).Id(post.PostId));
        }
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

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
            //return res;
            foreach (var x in res)
            {
                var r = GetElasticClient().Index(x, p => p.Index(IndexName).Type(TypePost).Id(x.PostId));
            }
        }
        public List<ElasticSearchModel> GetAllRecords(string query)
        {
            /* var res = GetElasticClient().Search<ElasticSearchModel>(s => s.Index(IndexName)
           .Type(TypePost).From(0).Size(20).
          Query(q => q.MatchPhrase(m => m.Field(f => f.Tags).Field(ff => ff.Title).Query(query))));*/
            var res = GetElasticClient().Search<ElasticSearchModel>(s => s.Index(IndexName)
            .Type(TypePost).From(0).Size(20).
           Query(q => q.MultiMatch(c=> c.Fields(f => f.Field(p=> p.Title).Fields(w=> w.Tags)).Fuzziness(Fuzziness.Auto).Query(query))));
      

            var records = new List<ElasticSearchModel>();

            foreach (var item in res.Hits)
            {
                records.Add(item.Source);
            }
            return records;
        }


        public List<PostRequestModel> GetSearchedResult(string query)
        {

            ///get all record from elastic for given search criteria
            var results = GetAllRecords(query);
            List<PostRequestModel> data = new List<PostRequestModel>();
            // this result will get matched to fetch record from database with matching postIds
            foreach (var p in results)
            {
                /* var postRecord = (from ep in db.Posts
                                   where ep.PostId == p.PostId
                                   select new PostRequestModel {
                                       PostId = ep.PostId,
                                       Title = ep.Title,
                                       Description = ep.Description



                                   }).FirstOrDefault();*/
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

                                  }).FirstOrDefault();

               
                data.Add(postRecord);

            }
            // finally create model of PostRequestModel

            return data;
        }



    }
}