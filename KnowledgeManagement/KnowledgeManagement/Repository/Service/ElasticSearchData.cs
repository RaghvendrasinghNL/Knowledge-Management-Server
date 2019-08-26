using KnowledgeManagement.Models;
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
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        private readonly string Url = "http://localhost:9200";
        private readonly string IndexName = "knowledgemanagement";
        private readonly string TypePost = "records";


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
                var r = GetElasticClient().Index(x, p => p.Index(IndexName).Type(TypePost).Id(x.PostId));
            }
        }

        /// <summary>
        /// This method will search all post related to the query entered 
        /// </summary>
        /// <param name="query">The phrase on which the search need to be performed</param>
        /// <returns>this will return the list of posts with tags , title and postid </returns>
        public List<ElasticSearchModel> GetAllRecords(string query)
        {
            string wildCardQuery = "*" + query + "*";
            var res = GetElasticClient().Search<ElasticSearchModel>(s => s.Index(IndexName)
            .Type(TypePost).From(0).Size(20)
            .Query(q => q.DisMax(c => c
            .Name("tags")
            .Queries(
                qq => qq.Wildcard(w => w.Title , wildCardQuery),
                qq => qq.Wildcard(m => m.Tags, wildCardQuery)
    ))));
           // .Query(q => q.MultiMatch(c => c.Fields(f => f.Field(p => p.Title).Fields(w => w.Tags)).Query(query))));
            


            var records = new List<ElasticSearchModel>();

            foreach (var item in res.Hits)
            {
                records.Add(item.Source);
            }
            return records;
        }

        /// <summary>
        /// All the post that are fetched from the elasticsearch db will be looped one by one 
        /// and all other details for them will be fetched from sql db 
        /// </summary>
        /// <param name="query">the phrase on which the searchmis performed</param>
        /// <returns>this will return a list of posts with matching postIDs</returns>
        public List<PostRequestModel> GetSearchedResult(string query)
        {

            var results = GetAllRecords(query);

           
            int flagTitle = 0, flagTag = 0;
            List<PostRequestModel> data = new List<PostRequestModel>();
            foreach (var p in results)
            {
                if (p.Title.ToUpper().Contains(query.ToUpper()))
                {

                   flagTitle = 1;
                   
                    
                }
                if(p.Tags.ConvertAll(x=> x.ToUpper()).Contains(query.ToUpper()))
                {
                    flagTag = 1;
                    
                   
                } 
            }

            // finally create model of PostRequestModel

           if((flagTag ==1&& flagTitle == 1)|| flagTag ==1)
           {
                int tagid;
                List<int> groupid = new List<int>();
                List<int> taglist = new List<int>();

                tagid = (from s in db.Tags
                                 where s.TagName == query
                                 select s.TagId).FirstOrDefault();

                groupid = (from j in db.AssociatedTags1
                                   where j.TagId == tagid
                                   select j.GroupId
                               ).ToList();
                if (groupid != null)
                {
                    foreach (var gid in groupid)
                    {
                        taglist = (from w in db.AssociatedTags1
                                   where w.GroupId == gid
                                   select w.TagId).ToList();


                        foreach (int tagslists in taglist)
                        {
                            var record = (from i in db.Posts
                                          join a in db.PostTags on i.PostId equals a.PostId
                                          join u in db.Users on i.UserId equals u.UserId
                                          where a.TagId == tagslists && i.IsDeleted
                                          select new PostRequestModel
                                          {
                                              PostId = i.PostId,
                                              Title = i.Title,
                                              Description = i.Description,
                                              PostDate = i.PostDate,
                                              Name = u.FirstName,
                                              Image = i.UserImage

                                          }).ToList();
                            foreach (var x in record)
                            {
                                x.TagName = (from posttags in db.PostTags
                                             join t in db.Tags on posttags.TagId equals t.TagId
                                             where posttags.PostId == x.PostId
                                             select t.TagName).ToList();

                                x.Likes = (from posts in db.Likes
                                           where posts.PostId == x.PostId
                                           select posts.UserId).Count();
                            }
                            data.AddRange(record);


                        }
                    }
                }else
                {
                    var record = (from i in db.Posts
                                  join a in db.PostTags on i.PostId equals a.PostId
                                  join u in db.Users on i.UserId equals u.UserId
                                  where a.TagId == tagid && i.IsDeleted
                                  select new PostRequestModel
                                  {
                                      PostId = i.PostId,
                                      Title = i.Title,
                                      Description = i.Description,
                                      PostDate = i.PostDate,
                                      Name = u.FirstName,
                                      Image = i.UserImage

                                  }).ToList();
                    foreach (var x in record)
                    {
                        x.TagName = (from posttags in db.PostTags
                                     join t in db.Tags on posttags.TagId equals t.TagId
                                     where posttags.PostId == x.PostId
                                     select t.TagName).ToList();

                        x.Likes = (from posts in db.Likes
                                   where posts.PostId == x.PostId
                                   select posts.UserId).Count();
                    }
                    data.AddRange(record);
                }
                return data;
            }  
            if (flagTitle == 1)
            {
                foreach (var p in results)
                {

                    var postRecord = (from s in db.Posts
                                      join u in db.Users on s.UserId equals u.UserId
                                      where s.PostId == p.PostId && s.IsDeleted
                                      select new PostRequestModel
                                      {
                                          PostId = s.PostId,
                                          Title = s.Title,
                                          Description = s.Description,
                                          PostDate = s.PostDate,
                                          Name = u.FirstName,
                                          Image = s.UserImage

                                      }).FirstOrDefault();

                    if (postRecord != null)
                    {
                        postRecord.TagName = (from posttags in db.PostTags
                                              join tag in db.Tags on posttags.TagId equals tag.TagId
                                              where posttags.PostId == postRecord.PostId
                                              select tag.TagName).ToList();



                        postRecord.Likes = (from posts in db.Likes
                                            where posts.PostId == postRecord.PostId
                                            select posts.UserId).Count();

                        data.Add(postRecord);
                    }

                }
                return data;
            }
            else
            {
                return data;
            }

          
        }

    }
}