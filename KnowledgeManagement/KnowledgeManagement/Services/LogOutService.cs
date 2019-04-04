using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Services
{
    public class LogOutService
    {

        private readonly KnowledgeManagementDevEntities db;

        public LogOutService()
        {
            db = new KnowledgeManagementDevEntities();
        }

        public void LogOut(LogOutRequestModel logOut)
        {
            var model = new LogOutRequestModel();
            model.EmailId = logOut.EmailId;
            model.LoginToken = null;

        }
    }
}