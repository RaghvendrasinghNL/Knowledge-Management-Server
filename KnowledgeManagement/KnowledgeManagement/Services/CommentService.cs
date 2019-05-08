using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace KnowledgeManagement.Services
{
    public class CommentService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        /// <summary>
        /// This will fetch the comment on the post by the post id 
        /// </summary>
        /// <param name="id">The post id is provided to fetch the comments</param>
        /// <returns>A list of comments containing postid,content,userid,Name,CommentDate and count</returns>
        public List<CommentModel> GetCommentById(int id)
        {

            var result = (from c in db.Comments
                          join u in db.Users on c.UserId equals u.UserId
                          where c.PostId == id
                          select new CommentModel
                          {
                              PostId = c.PostId,
                              Content = c.Content,
                              UserId = c.UserId,
                              Name = u.FirstName,
                              CommentDate = c.CommentDate
                          }).ToList();
            foreach (CommentModel p in result)
            {
                p.Count = (from posts in db.Comments
                           where posts.PostId == p.PostId
                           select posts.UserId).Count();

            }
            return result;
        }

        /// <summary>
        /// This will add a comment on a post according to PostId and will
        /// also add to the notification table with notificationId as 0 
        /// ie.. to generate notifications 
        /// </summary>
        /// <param name="comment">comment is the object for CommentModel 
        /// and require Content, userid, date, postid, name and count  </param>
        public void AddComment(CommentModel comment)
        {
            Comment obj = new Comment
            {
                UserId = comment.UserId,
                Content = comment.Content,
                CommentDate = DateTime.Now,
                PostId = comment.PostId
            };
            db.Comments.Add(obj);


            Notification obj1 = new Notification
            {
                NotificationType = 0,
                IsRead = 0,
                PostId = comment.PostId,
                UserId = comment.UserId
            };
            db.Notifications.Add(obj1);
            db.SaveChanges();

        }

    }

}
