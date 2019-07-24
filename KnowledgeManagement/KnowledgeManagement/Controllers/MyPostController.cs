using KnowledgeManagement.App_Start;
using KnowledgeManagement.Models;
using KnowledgeManagement.Business_Layer.Service;
using System.Runtime.Remoting.Messaging;
using System.Web.Http;
using KnowledgeManagement.Business_Layer.Interface;

namespace KnowledgeManagement.Controllers
{
    public class MyPostController : ApiController
    {

        // private AddPostService Mpc = new AddPostService();

        private readonly IMyPostService _myPost;
        
        public MyPostController(IMyPostService res)
        {
            _myPost = res;
        }
        

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
            _myPost.AddNewPost(AddPost);
            return Ok();
        }
       // private MyPostService Mp = new MyPostService();


      /// <summary>
      /// It will fetch all the post that are assosiated by a particular userId
      /// </summary>
      /// <returns>List of all the posts </returns>
       [CustomAuthorize]
        public IHttpActionResult Get()
        {
            var userInfo =  CallContext.GetData("UserInfo") as UserDetailsModel;
            return Ok(_myPost.MySeeRecentPost(userInfo.UserId)); 
      

        }


        [CustomAuthorize]
        public IHttpActionResult Put([FromBody] EditPostModel editPost)
        {
            var userInfo = CallContext.GetData("UserInfo") as UserDetailsModel;
            editPost.UserId = userInfo.UserId;
            var editpost = _myPost.EditMyPost(editPost);
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
            _myPost.DeleteRecentPost(id);
            return Ok();

        }
    }

}
