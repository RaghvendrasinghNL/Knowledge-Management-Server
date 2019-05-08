using System.Linq;

namespace KnowledgeManagement.Services
{
    public class LogOutService
    {
        /// <summary>
        /// It will Logout the user and will set the token as null 
        /// </summary>
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