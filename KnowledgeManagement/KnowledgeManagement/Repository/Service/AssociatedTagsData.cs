using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class AssociatedTagsData : IAssociatedTagsData
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        public void AddAssociatedTags(AssociatedTagModel associated)
        {

            AssociatedTag at = new AssociatedTag();
            {
                foreach (int x in associated.AssociatedId)
                {
                    at.AssociatedId = x;
                    at.TagId = associated.TagId;
                    db.AssociatedTags.Add(at);
                    db.SaveChanges();
                }
            }


        }
    }
}