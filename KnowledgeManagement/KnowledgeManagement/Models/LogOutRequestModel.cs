using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class LogOutRequestModel
    {
        public string EmailId { get; set; }
        public string LoginToken { get; set; }
    }
}