using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Google.Apis.Auth;
using KnowledgeManagement.Web;
using System.Threading.Tasks;
using KnowledgeManagement.Models.Entities;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class LoginService : ILoginService
    {
        public readonly ILoginData _data;

        public LoginService(ILoginData value)
        {
            _data = value;
        }

        public async Task<LoginRequestModel> Authenticatetoken(string token)
        {
            GoogleJsonWebSignature.Payload pyload = await GoogleJsonWebSignature.ValidateAsync(token);

            KnowledgeManagementEntities db = new KnowledgeManagementEntities();

            int h = (from n in db.Users
                     where pyload.Email == n.EmailId
                     select n.UserId).FirstOrDefault();

           var moderator = (from k in db.Users
                     where pyload.Email == k.EmailId
                     select k.isModerator).FirstOrDefault();
            

            var jwtToken =  JwtManager.GenerateToken(pyload.Email,h);
            LoginRequestModel lrmodel = new LoginRequestModel()
            {
                token = jwtToken,
                isModerator = moderator,
                UserId = h
            };
            return lrmodel;
        }

        public void LogOut(int UserId)
        {
            _data.LogOut(UserId);
        }
    }
}