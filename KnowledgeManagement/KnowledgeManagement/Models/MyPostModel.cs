using System;
using System.Collections.Generic;

namespace KnowledgeManagement.Models
{
    public class MyPostModel
    {

        public string FirstName { get; set; }
        public int PostId { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public List<int> TagId { get; set; }
        public List<string> TagName { get; set; }
        public DateTime PostDate { get; set; }
        public string Image { get; set; }
        public int Likes { get; set; }
        public int Count { get; set; }
        public int IsLiked { get; set; }


    }
}