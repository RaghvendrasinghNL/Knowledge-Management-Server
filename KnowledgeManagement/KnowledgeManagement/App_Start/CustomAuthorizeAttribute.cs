using KnowledgeManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.Http.Controllers;

namespace KnowledgeManagement.App_Start
{

    public class CustomAuthorizeAttribute : System.Web.Http.AuthorizeAttribute
    {
        private readonly KnowledgeManagementDevEntities context = new KnowledgeManagementDevEntities();

        


                public override void OnAuthorization(HttpActionContext actionContext)
            {

                var tokenListFromHeader = actionContext.Request.Headers.Where(w => w.Key == "token").
                    FirstOrDefault();
                var tokenFromHeader = tokenListFromHeader.Value.FirstOrDefault();
                Console.WriteLine("attribute called " + tokenFromHeader);

                // get associated user with this token
               var userFromDb = context.Users.Where(w => w.Token == tokenFromHeader).FirstOrDefault();
                if (userFromDb == null)
                {
                    // the token is invalid 
                    actionContext.Response = actionContext.Request.
                        CreateResponse(HttpStatusCode.Unauthorized);
                }
                else
                {
                var userInfo = new UserDetails
                {
                    UserId = userFromDb.UserId,
                    FirstName = userFromDb.FirstName,
                    Lastname = userFromDb.LastName,
                    EmailId = userFromDb.EmailId,
                    /*isActive = userFromDb.isActive,
                    isModerator = userFromDb.isModerator;*/
                    
                };
                CallContext.SetData("UserInfo", userInfo);
               

            }

                base.OnAuthorization(actionContext);
            }
            
        protected override void HandleUnauthorizedRequest(HttpActionContext actionContext)
        {

        }
    }
}
