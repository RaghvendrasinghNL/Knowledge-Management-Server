using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KnowledgeManagement.Business_Layer.Interface
{
  public interface IAddTagsService
    {
        Task<Boolean> AddTags(TagsModel tags);
        Task<IEnumerable<TagsModel>> GetTags(int UserId);
    }
}
