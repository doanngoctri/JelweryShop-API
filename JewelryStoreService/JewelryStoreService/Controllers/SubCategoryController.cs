using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;

namespace JewelryStoreService.Controllers
{
    public class SubCategoryController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();
        [Route("api/allSubCategories")]
        [HttpGet]
        public IHttpActionResult getSubAllCategories()
        {
            var subCategory = entities.GetAllSubCategories().ToList();
            if (subCategory == null)
            {
                return NotFound();
            }
            return Ok(subCategory);
        }

        [Route("api/allSubCatesOfCate")]
        [HttpGet]
        public IHttpActionResult getAllSubCatesOfCate(int cateID)
        {
            var subCategory = entities.GetAllSubCatesOfCate(cateID).ToList();
            if (subCategory == null)
            {
                return NotFound();
            }
            return Ok(subCategory);
        }
    }
}

