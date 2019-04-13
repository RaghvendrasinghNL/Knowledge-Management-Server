using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Services;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;

namespace KnowledgeManagement.Controllers
{
    public class MyPostController : ApiController
    {
        
        private AddPostServices Mpc = new AddPostServices();
        

        // POST api/<controller>
       [CustomAuthorize]
        public IHttpActionResult Post([FromBody]AddPostRequestModel AddPost)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            AddPost.UserId = userInfo.UserId;
            Mpc.AddNewPost(AddPost);
            return Ok();
        }
        private MyPostServices Mp = new MyPostServices();
      /// <summary>
      /// It will show the recent posts
      /// </summary>
      /// <returns>All Posts</returns>
       [CustomAuthorize]
        public IHttpActionResult Get()
        {
            var userInfo =  CallContext.GetData("UserInfo") as UserDetails;
            return Ok(Mp.MySeeRecentPost(userInfo.UserId));  //(id));
      

        }
        /// <summary>
        /// It will let the user delete his own posts
        /// </summary>
        /// <param name="id">This model will request UserId,FirstName,PostId,Title,Description,Tags,PostDate</param>
        /// <returns>Help user to delete his posts</returns>
        [CustomAuthorize]
        public IHttpActionResult Delete(int id) // PostId
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetails;
            Mp.DeleteRecentPost(id);
            return Ok();

        }
    }

}
