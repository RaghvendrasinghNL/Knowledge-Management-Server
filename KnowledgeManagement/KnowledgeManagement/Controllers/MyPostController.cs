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
        

       /// <summary>
       /// This method will add a post in post table
       /// </summary>
       /// <param name="AddPost">Will take title,description, tags, userimage,categoryid , userid as parameter </param>
       /// <returns>return a staus code of 200 </returns>
       [CustomAuthorize]
        public IHttpActionResult Post([FromBody]AddPostRequestModel AddPost)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            AddPost.UserId = userInfo.UserId;
            if (AddPost.Title.Equals(null))
            {
                return BadRequest("Enter the title");
            }
            if (AddPost.Description.Equals(null))
            {
                return BadRequest("Enter Description");
            }
            if (AddPost.Tags.Equals(null))
            {
                return BadRequest("Enter Tags");
            }
            Mpc.AddNewPost(AddPost);
            return Ok();
        }
        private MyPostServices Mp = new MyPostServices();


      /// <summary>
      /// It will fetch all the post that are assosiated by a particular userId
      /// </summary>
      /// <returns>List of all the posts </returns>
       [CustomAuthorize]
        public IHttpActionResult Get()
        {
            var userInfo =  CallContext.GetData("UserInfo") as UserDetailsModel;
            return Ok(Mp.MySeeRecentPost(userInfo.UserId)); 
      

        }


        [CustomAuthorize]
        public IHttpActionResult Put([FromBody] EditPostModel editPost)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            editPost.UserId = userInfo.UserId;
            var editpost = Mp.EditMyPost(editPost);
            if (editpost)
            {
                return Ok();
            }
            else
                return NotFound();
        }



        /// <summary>
        /// It will let the user delete his own posts
        /// </summary>
        /// <param name="id">This model will request UserId,FirstName,PostId,Title,Description,Tags,PostDate</param>
        /// <returns>this will return status code 200</returns>
        [CustomAuthorize]
        public IHttpActionResult Delete(int id)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            Mp.DeleteRecentPost(id);
            return Ok();

        }
    }

}
