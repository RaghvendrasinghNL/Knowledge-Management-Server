using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using KnowledgeManagement.Repository.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class MyPostService : IMyPostService
    {
        private readonly IMyPostData _data;

        public MyPostService(IMyPostData value)
        {
            _data = value;
        }

        public IEnumerable<MyPostModel> MySeeRecentPost(int UserId)
        {
            return _data.MySeeRecentPost(UserId);
        }

        public bool EditMyPost(EditPostModel editPost)
        {
            return _data.EditMyPost(editPost);
        }

        public void DeleteRecentPost(int PostId)
        {
             _data.DeleteRecentPost(PostId);
        }

        public void AddNewPost(AddPostRequestModel AddPost)
        {
            _data.AddNewPost(AddPost);
        }
    }
}