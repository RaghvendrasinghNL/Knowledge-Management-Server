using KnowledgeManagement.Models;
using System.Linq;

namespace KnowledgeManagement.Services
{
    /// <summary>
    ///  This service will let user  to Login and will add there logintoken after verifing the emailid
    /// </summary>
    public class AccountService
    {
        private readonly KnowledgeManagementDevEntities db;
        public AccountService()
        {
            db = new KnowledgeManagementDevEntities();
        }

        public bool AddUserLoginToken(LoginRequestModel loginRequestModel)
        {
            var user = db.Users.Where(w => w.EmailId == loginRequestModel.EmailId).FirstOrDefault();

            if (user == null)
            {
                return false;
            }

            loginRequestModel.isModerator = user.isModerator;
            user.Token = loginRequestModel.LoginToken;
            db.Entry(user).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            return true;
        }

    }
}