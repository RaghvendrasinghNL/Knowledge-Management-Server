using KnowledgeManagement.Models;

namespace KnowledgeManagement.Services
{
    /// <summary>
    /// This will add entries into the like table and also notification table
    /// </summary>
    public class LikeService
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        public void LikePost(LikedPostModel value)
        {
            Like postLiked = new Like();
            postLiked.UserId = value.UserId;
            postLiked.PostId = value.PostId;
            db.Likes.Add(postLiked);
            db.SaveChanges();

            Notification obj1 = new Notification();
            obj1.NotificationType = 1;
            obj1.IsRead = 0;
            obj1.PostId = value.PostId;
            obj1.UserId = value.UserId;
            db.Notifications.Add(obj1);
            db.SaveChanges();

        }

       
    }
}