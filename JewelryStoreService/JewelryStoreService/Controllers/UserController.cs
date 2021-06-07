using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;

namespace JewelryStoreService.Controllers
{
    public class UserController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();
        
        [Route("api/login")]
        [AcceptVerbs("GET", "POST")]
        [HttpGet]
        public IHttpActionResult login (string username, string password)
        {
            var result = entities.Login(username, password);
            return Ok(result);
        }

        [Route("api/userInfoById")]
        [AcceptVerbs("GET", "POST")]
        [HttpGet]
        
        public IHttpActionResult getUserInfoById(int userID)
        {
            var user = entities.GetUserInfoByID(userID).ToList();
            if(user == null)
            {
                return NotFound();
            }
            return Ok(user);
        }
        [Route("api/signup")]
        [AcceptVerbs("GET", "POST")]
        [HttpPost]
        public IHttpActionResult signUp(string name, string email, string phone, string username, string password, string address)
        {
            var user = entities.SignUp(name, email, phone, username, password, address);
            return Ok(user);
        }

        [Route("api/updateUser")]
        [AcceptVerbs("GET","POST")]
        [HttpPut]
        public IHttpActionResult updateUser(int userID, string name, string email, string phone, string address, string avatar)
        {
            var result = entities.UpdateUserInfo(userID, name, email, phone, address, avatar);
            return Ok(result);
        }

        [Route("api/changePassword")]
        [AcceptVerbs("GET","POST")]
        [HttpPost]
        public IHttpActionResult changePass(int userID, string oldPass, string newPass)
        {
            var result = entities.ChangePass(userID, oldPass, newPass);
            return Ok(result);
        }
    }
}
