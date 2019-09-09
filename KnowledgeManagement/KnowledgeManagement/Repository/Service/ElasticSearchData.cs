using KnowledgeManagement.Models;
using KnowledgeManagement.Models.Entities;
using KnowledgeManagement.Repository.Interface;
using Nest;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class ElasticSearchData : IElasticSearchData
    {
       readonly KnowledgeManagementEntities db = new KnowledgeManagementEntities();
        private readonly string ElasticSearchUrl = System.Configuration.ConfigurationManager.AppSettings["PFElasticSearchUrl"];
        private readonly string IndexName = "knowledgemanagement";
        private readonly string TypePost = "records";


        /// <summary>
        /// This will set up the connection with the elastic Search DB
        /// </summary>
        /// <returns> It will return the object if the connection is successful</returns>
        public IElasticClient GetElasticClient()
        {
            var uri = new Uri(ElasticSearchUrl);
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
           GetElasticClient().Index(post, p => p.Index(indexName).Type(typeName).Id(post.PostId));
        }

        /// <summary>
        /// this is for migrating data from sql to elastic db
        /// </summary>
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
                GetElasticClient().Index(x, p => p.Index(IndexName).Type(TypePost).Id(x.PostId));
            }
        }

        /// <summary>
        /// This method will search all post related to the query entered 
        /// </summary>
        /// <param name="query">The phrase on which the search need to be performed</param>
        /// <returns>this will return the list of posts with tags , title and postid </returns>
        private List<ElasticSearchModel> GetAllRecords(string query, List<string> tags)
        {
            string wildCardQuery = "*" + query + "*";
            var res = GetElasticClient().Search<ElasticSearchModel>(s => s.Index(IndexName)
            .Type(TypePost).From(0).Size(20)
            .Query(q => q.DisMax(c => c
            .Queries(
                qq => qq.Wildcard(w => w.Title, wildCardQuery),
                qq => qq.Terms(m => m.Field(f => f.Tags).Terms(tags))
                     ))));

            var records = new List<ElasticSearchModel>();

            foreach (var item in res.Hits)
            {
                records.Add(item.Source);
            }
            return records;
        }


        private List<string> GetAssociatedTagTillTwoLevel(string tagName)
        {

            return (from associatedObj1 in db.AssociatedTags1
                    join associatedObj2 in db.AssociatedTags1 on associatedObj1.GroupId equals associatedObj2.GroupId
                    join tag in db.Tags on associatedObj2.TagId equals tag.TagId
                    join tagActual in db.Tags on associatedObj1.TagId equals tagActual.TagId
                    where tagActual.TagName == tagName
                    select tag.TagName.ToLower()
                        ).Distinct().ToList();
        }



        public List<PostRequestModel> GetSearchResult(string query)
        {

            var results = GetAllRecords(query, GetAssociatedTagTillTwoLevel(query));
            var postIds = results.Select(s => s.PostId).ToList();
            var record = (from postObj in db.Posts
                          join userObj in db.Users on postObj.UserId equals userObj.UserId
                          where postIds.Contains(postObj.PostId) && postObj.IsDeleted
                          select new PostRequestModel
                          {
                              PostId = postObj.PostId,
                              Title = postObj.Title,
                              Description = postObj.Description,
                              PostDate = postObj.PostDate,
                              Name = userObj.FirstName,
                              Image = postObj.UserImage,
                              TagName = db.PostTags.Where(w => w.PostId == postObj.PostId)
                              .Select(s => s.Tag.TagName).ToList(),
                              Likes = db.Likes.Where(w => w.PostId == postObj.PostId).Count()

                          }).ToList();
            return record;
        }

      
    }

    }
