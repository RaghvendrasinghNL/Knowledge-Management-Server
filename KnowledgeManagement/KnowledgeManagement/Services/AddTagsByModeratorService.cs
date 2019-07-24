using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class AddTagsByModeratorService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        public Boolean AddTags(TagsModel tags)
        {
            int w = 0;
            
             w = (from x in db.Tags
                     where x.TagName == tags.TagName
                     select x.TagId).FirstOrDefault();

            if (w == 0)
            {

                Tag obj = new Tag
                {
                    TagName = tags.TagName
                };
                db.Tags.Add(obj);
                db.SaveChanges();

                tags.TagId = obj.TagId;
                return true;
            }
            else
            {
                return false;
            }
           
            
        }






      /*  public void AddNewTags(AddTagModel addTagModel )
        {
            int result = 0;
            
            foreach(string x in addTagModel.TagName)
            {
                result = (from l in db.Tags
                              where x == l.TagName
                              select l.TagId
                              ).FirstOrDefault();
                break;

            }
            if(result == 0)
            {
                
                
                    
                
            }*/

        }
    }
