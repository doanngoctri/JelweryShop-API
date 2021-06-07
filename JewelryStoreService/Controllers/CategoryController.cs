using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;

namespace JewelryStoreService.Controllers
{
    public class CategoryController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();

        [Route("api/allCategories")]
        [HttpGet]
        public IHttpActionResult getAllCategories()
        {
            var category = entities.GetAllCategories().ToList();
            if(category == null)
            {
                return NotFound();
            }
            return Ok(category);
        }
    }
}
