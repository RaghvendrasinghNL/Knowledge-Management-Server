using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class UserDetails
    {
        public int UserId { get; set; }
        public int FirstName { get; set; }
        public int Lastname { get; set; }
        public int EmailId { get; set; }
        public int isActive { get; set; }
        public int isModerator { get; set; }
    }
}