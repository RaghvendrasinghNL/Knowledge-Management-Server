using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KnowledgeManagement.Repository.Interface
{
    public interface ICommentData
    {
        List<CommentModel> GetCommentById(int id);
        void AddComment(CommentModel comment);
        bool EditMyComment(CommentModel comment);
    }
}
