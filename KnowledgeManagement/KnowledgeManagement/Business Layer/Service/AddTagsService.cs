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
    public class AddTagsService : IAddTagsService
    {
        public readonly IAddTagsData _data;

        public AddTagsService(IAddTagsData value)
        {
            _data = value;
        }

        public async Task<Boolean> AddTags(TagsModel tags)
        {
            return await Task.Run<Boolean>(() => _data.AddTags(tags));
        }

        public async Task<IEnumerable<TagsModel>> GetTags(int UserId)
        {
            return await Task.Run<IEnumerable<TagsModel>>(() =>  _data.GetTags(UserId));
        }
    }
}