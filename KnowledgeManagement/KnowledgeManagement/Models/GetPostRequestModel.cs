using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Models
{
    public enum SortingType { 
        RecentPost,
        MaxLikes,
        MaxComments,
       
    }

    public enum FilterType {
        RecentPost,
        ByLikedPost,

        ByFollowdTags

    }

    public class GetPostRequestModel
    {
        
        public  int CategoryId { get; set; }
        
        public  SortingType SortingType { get; set; }
        public  List<FilterType> FilterType { get; set; }
        public  List<string> FilterTags { get; set; }
        public  string SearchQuery  { get; set; }

    }
}