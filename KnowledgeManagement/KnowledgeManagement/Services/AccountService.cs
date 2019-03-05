using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using KnowledgeManagement.Models;

namespace KnowledgeManagement.Services
{
    public class AccountService
    {
        private readonly KnowledgeManagementDevEntities db;

        public AccountService() {
            db = new KnowledgeManagementDevEntities();
        }

        public bool AddUserLoginToken(LoginRequestModel loginRequestModel) {
            var user = db.Users.Where(w => w.EmailId == loginRequestModel.EmailId).FirstOrDefault();

            if (user == null)
            {
                return false;
            }
            user.Token = loginRequestModel.LoginToken;
            db.Entry(user).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return true;
        }

        private void test() {
            var model = new LoginRequestModel();
            model.EmailId = "email";
            model.LoginToken = null;

            var accountService = new AccountService();
            accountService.AddUserLoginToken(model);
        }

    }
}