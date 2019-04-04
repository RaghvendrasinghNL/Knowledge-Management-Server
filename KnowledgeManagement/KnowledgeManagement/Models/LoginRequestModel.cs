using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class LoginRequestModel
    {
        public string LoginToken { get; set; }
        public string EmailId { get; set; }
        public int UserId { get; set; }
       
    }
}