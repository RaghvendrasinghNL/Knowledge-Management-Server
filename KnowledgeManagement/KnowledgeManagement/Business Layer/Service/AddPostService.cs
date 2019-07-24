using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class AddPostService 
    {
        AddPostData adddata = new AddPostData();
        public void AddNewPost(AddPostRequestModel AddPost)
        {
            adddata.AddNewPost(AddPost);
        }
    }
}