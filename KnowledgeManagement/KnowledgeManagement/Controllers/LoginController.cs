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


        // GET: api/Login
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/Login/5
        public string Get(int id)
        {
            return "value";
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

        // PUT: api/Login/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Login/5
        public void Delete(int id)
        {
        }
    }
}
