using KnowledgeManagement.App_Start;
using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using KnowledgeManagement.Repository.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Http;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class HomePageService : IHomePageService
    {
        public readonly IHomePageData _data;

        public HomePageService(IHomePageData value)
        {
            _data = value;
        }

       // HomePageData home = new HomePageData();

        public IEnumerable<PostRequestModel> HomePagePost(int UserId, int CategoryId, SortingType sortingtype, FilterType filtertype)

        {
            return _data.HomePagePost(UserId, CategoryId, sortingtype, filtertype);
        }
    }
}