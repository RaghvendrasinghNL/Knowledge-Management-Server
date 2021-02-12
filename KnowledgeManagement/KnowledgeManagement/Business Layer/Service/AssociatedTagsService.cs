using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class AssociatedTagsService : IAssociatedTagsService
    {
        public readonly IAssociatedTagsData _data;

        public AssociatedTagsService(IAssociatedTagsData value)
        {
            _data = value;
        }

        public async Task AddAssociatedTags(AssociatedTagModel associated)
        {
           await Task.Run(() => _data.AddAssociatedTags(associated));
        }

        public async Task<IEnumerable<AssociatedModel>> GetAssociatedTags(int UserId)
        {
           return await Task.Run<IEnumerable<AssociatedModel>>(() => _data.GetAssociatedTags(UserId));
        }

    }
}