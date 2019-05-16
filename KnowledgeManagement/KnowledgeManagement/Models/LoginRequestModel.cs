using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class LoginRequestModel
    {
        /// <summary>
        /// Login Token created at the time of login
        /// </summary>
        public string LoginToken { get; set; }
        /// <summary>
        /// EmailId
        /// </summary>
        public string EmailId { get; set; }
        /// <summary>
        /// Id of user
        /// </summary>
        public int UserId { get; set; }
        /// <summary>
        /// To see where user is Moderator or not
        /// </summary>
        public int? isModerator { get; set; }

    }
}