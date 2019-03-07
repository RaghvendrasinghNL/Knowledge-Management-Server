using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class CommentService
    {
           KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
            public List<CommentModel> GetCommentById(int id)
            {

                var result = db.Comments.Where(w => w.PostId == id).Select(s =>
                  new CommentModel { PostId = s.PostId, Content = s.Content, UserId = s.UserId, CommentDate = s.CommentDate })
                  .ToList();

                return result;
            }
            public void AddComment(CommentModel comment)
            {
                Comment obj = new Comment();
                obj.UserId = comment.UserId;
                obj.Content = comment.Content;
                obj.CommentDate = DateTime.Now;
                obj.UserId = comment.UserId;
                db.Comments.Add(obj);
                db.SaveChanges();


            }

        }

    }
