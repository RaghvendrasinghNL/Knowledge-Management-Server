using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class ModeratorNotificationService : IModeratorNotificationService
    {
        public readonly IModeratorNotificationData _data;

        public ModeratorNotificationService(IModeratorNotificationData res)
        {
            _data = res;
        }

        public List<NotificationModel> GetModeratorNotification(int UserId)
        {
            return _data.GetModeratorNotification(UserId);
        }
    }
}