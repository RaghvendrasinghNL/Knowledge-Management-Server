using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Business_Layer.Service;
using KnowledgeManagement.Repository.Interface;
using KnowledgeManagement.Repository.Service;
using System.Web.Http;
using Unity;
using Unity.WebApi;

namespace KnowledgeManagement
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            // register all your components with the container here
            // it is NOT necessary to register your controllers

            // e.g. container.RegisterType<ITestService, TestService>();

            container.RegisterType<IHomePageService, HomePageService>();
            container.RegisterType<IHomePageData, HomePageData>();

            container.RegisterType<ILikeService, LikeService>();
            container.RegisterType<ILikeData, LikeData>();

            container.RegisterType<ILoginService, LoginService>();
            container.RegisterType<ILoginData, LoginData>();

            container.RegisterType<ICommentService, CommentService>();
            container.RegisterType<ICommentData, CommentData>();

            container.RegisterType<IAddTagsService, AddTagsService>();
            container.RegisterType<IAddTagsData, AddTagsData>();

            container.RegisterType<IAssociatedTagsService, AssociatedTagsService>();
            container.RegisterType<IAssociatedTagsData, AssociatedTagsData>();

            container.RegisterType<ISpamService, SpamService>();
            container.RegisterType<ISpamData, SpamData>();

            container.RegisterType<INotificationService, NotificationService>();
            container.RegisterType<INotificationData, NotificationData>();

            container.RegisterType<IModeratorNotificationService, ModeratorNotificationService>();
            container.RegisterType<IModeratorNotificationData, ModeratorNotificationData>();

            container.RegisterType<IElasticSearchService, ElasticSearch>();
            container.RegisterType<IElasticSearchData, ElasticSearchData>();

            container.RegisterType<IMyPostService, MyPostService>();
            container.RegisterType<IMyPostData, MyPostData>();



            GlobalConfiguration.Configuration.DependencyResolver = new UnityDependencyResolver(container);


        }
    }
}