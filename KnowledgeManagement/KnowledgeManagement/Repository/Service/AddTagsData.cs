using KnowledgeManagement.Models;
using KnowledgeManagement.Models.Entities;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class AddTagsData : IAddTagsData
    {
       readonly KnowledgeManagementEntities db = new KnowledgeManagementEntities();

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
                tags.TagName = obj.TagName;
                return true;
            }
            else
            {
                return false;
            }


        }

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