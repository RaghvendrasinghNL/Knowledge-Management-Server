using KnowledgeManagement.Models;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Http.Controllers;
using System.Web.Mvc;
using System;


namespace KnowledgeManagement.App_Start
{
    public class CustomAuthorizeAttribute : System.Web.Http.AuthorizeAttribute {

        public override void OnAuthorization(HttpActionContext actionContext) {
            var token = actionContext.Request.Headers.Where(w => w.Key == "token").FirstOrDefault();
            
            Console.WriteLine("attribute called "+ token.Value);

            
        }
        KnowledgeManagementDevEntities context = new KnowledgeManagementDevEntities();

        protected void Application_PostAuthorizeRequest()
        {
            System.Web.HttpContext.Current.SetSessionStateBehavior(System.Web.SessionState.SessionStateBehavior.Required);
             
        }





        public 

        protected override void HandleUnauthorizedRequest(HttpActionContext actionContext) {

       }
    }
    //{

    //    KnowledgeManagementDevEntities context = new KnowledgeManagementDevEntities(); 
    //    private readonly string[] allowedroles;

    //    public object GetUser { get; private set; }

       
    //    protected override bool AuthorizeCore(HttpContextBase httpContext)
    //    {
    //        bool authorize = false;
    //        foreach (var role in allowedroles)
    //        {
    //            var user = (from l in context.Users
    //                        where l.Token == Token
    //                        select new LoginRequestModel
    //                        {
    //                UserId = l.UserId
    //            }).ToList();
    //            if (user.Count() > 0)
    //            {
    //                authorize = true; 
    //            }
    //        }
    //        return authorize;
    //    }
    //    protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
    //    {
    //        filterContext.Result = new HttpUnauthorizedResult();
    //    }
}