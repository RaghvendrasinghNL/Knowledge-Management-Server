using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class AddPostData
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        private ElasticSearch es = new ElasticSearch();
        private static readonly NLog.Logger logger = NLog.LogManager.GetCurrentClassLogger();

        /// <summary>
        /// This will add a entry in the post table with all the attributes and also 
        /// entry is made in post tags table for corresponding postid
        /// </summary>
        /// <param name="AddPost">Addpost is the object of model and contains all the values that is 
        /// needed to be set for the entry </param>
        public void AddNewPost(AddPostRequestModel AddPost)
        {

            Post post = new Post
            {
                Title = AddPost.Title,
                PostDate = DateTime.Now,
                Description = AddPost.Description,
                UserId = AddPost.UserId,
                CategoryId = AddPost.CategoryId,
                IsDeleted = true,
                UserImage = AddPost.Image
            };
            db.Posts.Add(post);
            db.SaveChanges();

            foreach (int res in AddPost.Tags)
            {
                PostTag posttags = new PostTag();
                posttags.PostId = post.PostId;
                posttags.TagId = res;
                db.PostTags.Add(posttags);
                db.SaveChanges();
            }

            es.GetSqlData();
        }

    }
}
