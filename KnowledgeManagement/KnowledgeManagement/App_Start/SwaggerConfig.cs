using System.Web.Http;
using WebActivatorEx;
using KnowledgeManagement;
using Swashbuckle.Application;

[assembly: PreApplicationStartMethod(typeof(SwaggerConfig), "Register")]

namespace KnowledgeManagement
{
    public static class SwaggerConfig
    {
        public static void Register()
        {
           

            GlobalConfiguration.Configuration
                .EnableSwagger(c =>
                    {
                       
                        c.SingleApiVersion("v1", "KnowledgeManagement");

                      

                     
                      
                        
                    })
                .EnableSwaggerUi(c =>
                    {
                        c.EnableApiKeySupport("token", "header");
                        

                    });
        }
    }
}
