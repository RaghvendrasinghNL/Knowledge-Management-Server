using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
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
            var result = ac.AddUserLoginToken(loginRequestModel);
            if (result)
            {
                return Ok();
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
