using KnowledgeManagement.Business_Layer.Interface;
using KnowledgeManagement.Models;
using KnowledgeManagement.Repository.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace KnowledgeManagement.Business_Layer.Service
{
    public class LoginService : ILoginService
    {
        public readonly ILoginData _data;

        public LoginService(ILoginData value)
        {
            _data = value;
        }
       

      

        public bool AddUserLoginToken(LoginRequestModel loginRequestModel)
        {
             return _data.AddUserLoginToken(loginRequestModel);
        }

        public void LogOut(int UserId)
        {
            _data.LogOut(UserId);
        }
    }
}