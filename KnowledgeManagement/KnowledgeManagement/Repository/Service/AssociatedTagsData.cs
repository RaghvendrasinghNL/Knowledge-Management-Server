using KnowledgeManagement.Models;
using KnowledgeManagement.Models.Entities;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class AssociatedTagsData : IAssociatedTagsData
    {
        readonly KnowledgeManagementContext db = new KnowledgeManagementContext();



        public void AddAssociatedTags(AssociatedTagModel associated)
        {
            var result = (from at in db.AssociatedTags

                          select at.GroupId).LastOrDefault();


            result++;

            AssociatedTag associatedTag = new AssociatedTag();
            {
                foreach (int x in associated.TagId)
                {
                    associatedTag.TagId = x;
                    associatedTag.GroupId = result;
                    associatedTag.CreatedAt = DateTime.Now;
                    associatedTag.UpdatedAt = DateTime.Now;

                    db.AssociatedTags.Add(associatedTag);
                    db.SaveChanges();

                }

            }



        }


    }
}