using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
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

        public Boolean AddTags(TagsModel tags)
        {
            return _data.AddTags(tags);
        }

        public IEnumerable<TagsModel> GetTags(int UserId)
        {
            return _data.GetTags(UserId);
        }
    }
}