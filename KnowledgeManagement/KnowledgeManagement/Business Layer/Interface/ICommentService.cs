using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KnowledgeManagement.Business_Layer.Interface
{
   public interface ICommentService
    {
        List<CommentModel> GetCommentById(int id);
        void AddComment(CommentModel comment);
        bool EditMyComment(CommentModel comment);

    }
}
