using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class AssociatedTagsService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        public void AddAssociatedTags(AssociatedTagModel associated)
        {
          
                AssociatedTag at = new AssociatedTag();
                {
                    foreach(int x in associated.AssociatedId)
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