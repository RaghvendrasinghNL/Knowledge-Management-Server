using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;


namespace KnowledgeManagement.Controllers
{
    public class LoginController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        private AccountService ac;
        LoginController()
        {
            ac = new AccountService();
        }
        private LogOutService ls = new LogOutService();


        // POST: api/Login

        public IHttpActionResult Post([FromBody]LoginRequestModel loginRequestModel)
        {
            //var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            var result = ac.AddUserLoginToken(loginRequestModel);
            //loginRequestModel.isModerator = userInfo.isModerator;
            if (result)
            {

                return Ok(new { isModerator = loginRequestModel.isModerator });
            }
            return NotFound();

        }



        // DELETE: api/Login/5
        [CustomAuthorize]
        public IHttpActionResult Delete()
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            var UserId = userInfo.UserId;
            ls.LogOut(UserId);
            return Ok();
        }
    }
}
