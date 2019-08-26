using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Web;
using System.Threading.Tasks;
using System.Web;
using KnowledgeManagement.Filter;
using System;
using NLog;

namespace KnowledgeManagement.Controllers
{
    public class LoginController : ApiController
    {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();
        // private AccountService accountService = new AccountService();
        //private LogOutService ls = new LogOutService();
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();
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
        

       // public IHttpActionResult Post([FromBody]LoginRequestModel loginRequestModel)

        public async Task<IHttpActionResult> Post(string token)
        {
            try
            {
                logger.Info("loggin in app");
                var result = await _ls.Authenticatetoken(token);
                if (result != null)
                {
                    return Ok(result);
                }
                return NotFound();
            }
            catch(Exception ex)
            {
                logger.Error("Login#Post!!BadRequest" + ex);
                return BadRequest("Exception - " + ex);
            }
        }


        /// <summary>
        /// This will be used to delete the User token when logged out 
        /// </summary>
        /// <returns>this will return status code 200 </returns>
       
        public IHttpActionResult Delete()
        {
            // var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            // var UserId = userInfo.UserId;
            string username = string.Empty;
            string userId = string.Empty;
            var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];
            JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
            int userid = Int32.Parse(userId);
            _ls.LogOut(userid);
            return Ok();
        }
    }
}
