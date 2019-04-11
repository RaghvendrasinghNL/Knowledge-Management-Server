using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public class PostRequestModel
    {
        public int PostId { get; set; }
        public string Title  { get; set; }
        public string Description { get; set; }
        public  DateTime PostDate { get; set; }
        public string Name { get; set; }
        public int IsLiked { get; set; }
       
        public int UserId { get; set; }
        public int Likes { get; set; }


    }
}