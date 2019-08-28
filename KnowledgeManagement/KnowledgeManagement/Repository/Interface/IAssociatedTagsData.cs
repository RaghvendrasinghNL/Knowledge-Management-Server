using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KnowledgeManagement.Repository.Interface
{
    public interface IAssociatedTagsData
    {
        void AddAssociatedTags(AssociatedTagModel associated);
         IEnumerable<AssociatedModel> GetAssociatedTags(int UserId);
    }
}
