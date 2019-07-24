using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class LikeService : ILikeService
    {
        public readonly ILikeData _data;

        public LikeService(ILikeData value)
        {
            _data = value;
        }

        public void LikePost(LikedPostModel res)
        {
             _data.LikePost(res);
        }
    }
}