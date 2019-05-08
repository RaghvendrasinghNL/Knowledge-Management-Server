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
        private AccountService accountService = new AccountService();
        private LogOutService ls = new LogOutService();



        /// <summary>
        /// This methos will add the login Token for authentication
        /// </summary>
        /// <param name="loginRequestModel">It is the object of LoginRequestModel userid emailid </param>
        /// <returns>satus code 200 or code 404 if not found </returns>
        public IHttpActionResult Post([FromBody]LoginRequestModel loginRequestModel)
        {
            
            var result = accountService.AddUserLoginToken(loginRequestModel);
            if (result)
            {

                return Ok(new { isModerator = loginRequestModel.isModerator });
            }
            return NotFound();

        }


        /// <summary>
        /// This will be used to delete the User token when logged out 
        /// </summary>
        /// <returns>this will return status code 200 </returns>
        [CustomAuthorize]
        public IHttpActionResult Delete()
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var UserId = userInfo.UserId;
            ls.LogOut(UserId);
            return Ok();
        }
    }
}
