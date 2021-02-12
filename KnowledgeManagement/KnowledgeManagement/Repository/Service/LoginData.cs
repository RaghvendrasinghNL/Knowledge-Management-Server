using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Repository.Service
{
    public class LoginData : ILoginData
    {
        private readonly KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

        

        public void LogOut(int UserId)
        {
            var userdetails = db.Users.Where(w => w.UserId == UserId).FirstOrDefault();
            userdetails.Token = null;
            db.Entry(userdetails).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();

        }
    }
}