using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Interface;

namespace KnowledgeManagement.Controllers
{
    public class LoginController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
       // private AccountService accountService = new AccountService();
        //private LogOutService ls = new LogOutService();

        public ILoginService _ls;

        public LoginController(ILoginService lp)
        {
            _ls = lp;
        }



        /// <summary>
        /// This methos will add the login Token for authentication
        /// </summary>
        /// <param name="loginRequestModel">It is the object of LoginRequestModel userid emailid </param>
        /// <returns>satus code 200 or code 404 if not found </returns>
        public IHttpActionResult Post([FromBody]LoginRequestModel loginRequestModel)
        {
            
            var result = _ls.AddUserLoginToken(loginRequestModel);
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
            _ls.LogOut(UserId);
            return Ok();
        }
    }
}
