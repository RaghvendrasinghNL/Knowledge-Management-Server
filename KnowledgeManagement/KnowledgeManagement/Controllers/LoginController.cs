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
        private AccountService ac;
        LoginController()
        {
            ac = new AccountService();
        }


       
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
        public void Delete(int id)
        {
        }
    }
}
