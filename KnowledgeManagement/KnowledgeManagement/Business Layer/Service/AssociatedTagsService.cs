using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
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

        public void AddAssociatedTags(AssociatedTagModel associated)
        {
            _data.AddAssociatedTags(associated);
        }

    }
}