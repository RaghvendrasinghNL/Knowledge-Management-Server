using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class CommentService
    {
           KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
            public List<CommentModel> GetCommentById(int id)
            {

                var result =( from c in db.Comments join u in db.Users on c.UserId equals u.UserId
                where c.PostId == id
                select new CommentModel
                {
                    PostId = c.PostId,
                    Content = c.Content,
                    UserId = c.UserId,
                    Name = u.FirstName,       
                    CommentDate = c.CommentDate }).ToList();
                foreach (CommentModel p in result)
            {
                p.count = (from posts in db.Comments
                           where posts.PostId == p.PostId
                           select posts.UserId).Count();
            }
                return result;
            }
            
            public void AddComment(CommentModel comment)
            {
            
                Comment obj = new Comment();
                obj.UserId = comment.UserId;
                obj.Content = comment.Content;
                obj.CommentDate = DateTime.Now;
                obj.PostId = comment.PostId;
                db.Comments.Add(obj);
                

            Notification obj1 = new Notification();
            obj1.NotificationId = 1; // auto increment 
            obj1.NotificationType = 0;//comment is 0 like is 1 
            obj1.IsRead = 0;
            obj1.PostId = comment.PostId;
            obj1.UserId = comment.UserId;
            db.Notifications.Add(obj1);
            db.SaveChanges();

        }

        }

    }
