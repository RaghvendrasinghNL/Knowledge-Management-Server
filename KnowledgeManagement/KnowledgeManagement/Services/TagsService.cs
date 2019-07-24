
using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class TagsService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        public IEnumerable<TagsModel> GetTags(int UserId)
        {
            
            var result = (from c in db.Tags
                          select new TagsModel
                          {   
                              TagId = c.TagId,
                              TagName = c.TagName
            }
                          
                          ).ToList();



            return result;
        }

       
           
            
        

    }
}
