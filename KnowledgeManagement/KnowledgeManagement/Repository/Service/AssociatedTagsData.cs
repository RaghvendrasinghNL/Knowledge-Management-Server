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

        /* public void AddAssociatedTags(AssociatedTagModel associated)
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


         }*/

        public void AddAssociatedTags(AssociatedTagModel associated)
        {
            var result = (from at in db.AssociatedTags1
                          
                          select at.GroupId).ToList().LastOrDefault();


            result++;

            AssociatedTag1 associatedTag1 = new AssociatedTag1();
            {
                foreach (int x in associated.TagId)
                {
                    associatedTag1.TagId = x;
                    associatedTag1.GroupId = result;

                    db.AssociatedTags1.Add(associatedTag1);
                    db.SaveChanges();

                }

            }
           


        }

        public IEnumerable<AssociatedModel> GetAssociatedTags(int UserId)
        {

            var record = (from j in db.AssociatedTags1
                          select j.GroupId).ToList();
            List<AssociatedModel> associateds = new List<AssociatedModel>();
            foreach (var t in record)
            {
                var result = (from y in db.AssociatedTags1
                              where y.GroupId == t
                              group y by y.GroupId into g
                              let query = g.FirstOrDefault()
                              let GroupId = query.GroupId
                              select new AssociatedModel
                              {
                                  GroupId = GroupId,
                                  TagId = g.Select(e => e.TagId).ToList()
                              }).ToList();
                associateds.AddRange(result);
            }
            return associateds;
        }
    }
}