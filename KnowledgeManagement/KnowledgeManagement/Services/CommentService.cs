﻿using KnowledgeManagement.App_Start;
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
                db.SaveChanges();


            }

        }

    }
