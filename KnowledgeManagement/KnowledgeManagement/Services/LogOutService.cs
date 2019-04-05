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

        public void LogOut(int UserId)
        {
            var userdetails = db.Users.Where(w => w.UserId == UserId).FirstOrDefault();
            userdetails.Token = "null";
            db.Entry(userdetails).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

        }
    }
}