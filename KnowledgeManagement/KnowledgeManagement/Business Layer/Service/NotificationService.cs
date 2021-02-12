using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class NotificationService : INotificationService
    {
        public readonly INotificationData _data;

        public NotificationService(INotificationData value)
        {
            _data = value;
        }

        public List<NotificationModel> GetUserNotification(int UserId)
        {
           return _data.GetUserNotification(UserId);
        }
    }
}