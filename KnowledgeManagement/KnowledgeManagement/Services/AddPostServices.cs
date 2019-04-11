using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace KnowledgeManagement.Services
{

    public class AddPostServices
    {

        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        private static NLog.Logger logger = NLog.LogManager.GetCurrentClassLogger();

        //NLog supports several logging levels, including INFO
        //Logger.Debug("hi");

        //[CustomAuthorize]
        public void AddNewPost(AddPostRequestModel AddPost)
        {
            // var userInfo = CallContext.GetData("UserInfo") as UserDetails;

            Post post = new Post();
            post.Title = AddPost.Title;
            

            
            post.PostDate = DateTime.Now;

            post.Description = AddPost.Description;
            post.UserId = AddPost.UserId;
            post.CategoryId = AddPost.CategoryId;
            post.IsDeleted = true;
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
        }
                   
        }
        
    }