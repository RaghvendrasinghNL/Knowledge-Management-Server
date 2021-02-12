using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KnowledgeManagement.Repository.Interface
{
   public interface IMyPostData
    {
        IEnumerable<MyPostModel> MySeeRecentPost(int UserId);
        bool EditMyPost(EditPostModel editPost);
        void DeleteRecentPost(int PostId);
        void AddNewPost(AddPostRequestModel AddPost);
    }
}
