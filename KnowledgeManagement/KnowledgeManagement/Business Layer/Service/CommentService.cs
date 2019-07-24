using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class CommentService : ICommentService
    {
        public readonly ICommentData _data;

        public CommentService(ICommentData value)
        {
            _data = value;
        }

        public List<CommentModel> GetCommentById(int id)
        {
            return _data.GetCommentById(id);
        }

        public void AddComment(CommentModel comment)
        {
            _data.AddComment(comment);
        }

        public bool EditMyComment(CommentModel comment)
        {
          return  _data.EditMyComment(comment);
        }
    }
}