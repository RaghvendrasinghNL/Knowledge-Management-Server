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
using KnowledgeManagement.Filter;
using System.Web.Http.Controllers;
using System.Web;
using KnowledgeManagement.Web;
using NLog;
namespace KnowledgeManagement.Controllers
{
    public class HomePageController : ApiController
    {
        // private HomePageService Hp = new HomePageService();
        private static Logger logger = NLog.LogManager.GetCurrentClassLogger();
        private IHomePageService _hp;

        public HomePageController(IHomePageService homePage)
        {
            _hp = homePage;
        }

       

       [JwtAuthentication]
        // public IHttpActionResult Get(int CategoryId,SortingType sortingtype,FilterType filtertype, int pageNumber)
        public IHttpActionResult Get(int CategoryId, SortingType sortingtype, FilterType filtertype)
        {
           
            try
            {
                string username = string.Empty;
                
                logger.Info("entering into the categories");

                string userId = string.Empty;

                var token = HttpContext.Current.Request.Headers["Authorization"].Split(' ')[1];

                JwtAuthenticationAttribute.ValidateToken(token, out username, out userId);
                int userid = Int32.Parse(userId);
                //SortingType sortingType = sortingTypesortingtype
                //var data = _hp.HomePagePost(userid, CategoryId, sortingtype, filtertype, pageNumber);
                var data = _hp.HomePagePost(userid, CategoryId, sortingtype, filtertype);




                logger.Info("Back to Post controller and returing result");
                return Ok(data);
            }
            catch(Exception ex)
            {
                logger.Info("Back to Post controller and returing result");
                logger.Error("HomePage#Get!!BadRequest"+ex);
                return BadRequest("Exception - " + ex);
            }
        }
    }
}
