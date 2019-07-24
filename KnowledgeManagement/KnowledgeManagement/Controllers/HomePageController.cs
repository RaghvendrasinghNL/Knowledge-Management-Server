using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Interface;

namespace KnowledgeManagement.Controllers
{
    public class HomePageController : ApiController
    {
        // private HomePageService Hp = new HomePageService();

        private IHomePageService _hp;

        public HomePageController(IHomePageService homePage)
        {
            _hp = homePage;
        }
        

        [CustomAuthorize]
        // public IHttpActionResult Get(int id,[FromBody]GetPostRequestModel model)
        public IHttpActionResult Get(int CategoryId,SortingType sortingtype,FilterType filtertype)
        {
            var logger = NLog.LogManager.GetCurrentClassLogger();
            logger.Info("entering into the categories");
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            var userId = userInfo.UserId;
            var data = _hp.HomePagePost(userId,CategoryId, sortingtype, filtertype);

            var logger1 = NLog.LogManager.GetCurrentClassLogger();
            logger1.Info("Back to Post controller and returing result");
            return Ok(data);
        }
    }
}
