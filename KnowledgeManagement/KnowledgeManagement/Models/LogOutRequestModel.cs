using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class LogOutRequestModel
    {
        /// <summary>
        /// EmailId
        /// </summary>
        public string EmailId { get; set; }
        /// <summary>
        /// LoginToken
        /// </summary>
        public string LoginToken { get; set; }
    }
}