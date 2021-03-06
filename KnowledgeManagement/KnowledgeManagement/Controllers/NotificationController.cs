﻿using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class NotificationController : ApiController
    {
        NotificationService notificationService = new NotificationService();
       

    
        public NotificationModel Get(int Id)
        {
            var result = notificationService.GetNotificationById(Id);

            return result;
        }

        public IHttpActionResult Get(string token)
        {
            var result = notificationService.GetUserNotification(token);
            return Ok(result);
        }
        
    }
}