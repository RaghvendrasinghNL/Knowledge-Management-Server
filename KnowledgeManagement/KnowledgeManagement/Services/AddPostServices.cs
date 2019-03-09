using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class AddPostServices
    {

        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        public void AddNewPost(AddPostRequestModel AddPost)
        {
            
            Post post = new Post();
            post.Heading = AddPost.Heading;
            post.PostDate = DateTime.Now;
            post.Description = AddPost.Description;
            post.UserId = AddPost.UserId;
            post.CategoryId = AddPost.CategoryId;
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