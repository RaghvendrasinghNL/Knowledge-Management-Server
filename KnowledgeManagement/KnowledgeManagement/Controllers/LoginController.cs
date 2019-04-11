using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
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
        /// <summary>
        /// It help user to get login
        /// </summary>
        /// <param name="loginRequestModel">The model will request UserId,TokenId,EmailId</param>
        /// <returns>If found it will return ok else NotFound</returns>
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
        public IHttpActionResult Delete(LogOutRequestModel logOut)
        {
            ls.LogOut(logOut);          //LogOut
            return Ok();
        }
    }
}
