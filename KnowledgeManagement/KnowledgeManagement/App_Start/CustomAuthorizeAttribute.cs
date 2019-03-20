using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http.Controllers;

namespace KnowledgeManagement.App_Start
{
   
        public class CustomAuthorizeAttribute : System.Web.Http.AuthorizeAttribute
        {
        KnowledgeManagementDevEntities db = new KnowledgeManagementDevEntities();

            public override void OnAuthorization(HttpActionContext actionContext)
            {
                var token = actionContext.Request.Headers.Where(w => w.Key == "token").FirstOrDefault();
                



                Console.WriteLine("attribute called " + token.Value);
            }

            protected override void HandleUnauthorizedRequest(HttpActionContext actionContext)
            {

            }
        }
    }
