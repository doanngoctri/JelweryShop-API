using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;

namespace JewelryStoreService.Controllers
{
    public class ProductGroupController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();
/*        [Route("api/allProductGroups")]
        [HttpGet]
        public IHttpActionResult getAllProductGroups()
        {
            var productGroup = entities.GetAllProductGroups().ToList();
            if (productGroup == null)
            {
                return NotFound();
            }
            return Ok(productGroup);
        }*/

        [Route("api/allProGroupsOfSubCate")]
        [HttpGet]
        public IHttpActionResult getAllProGroupsOfSubCate(int subCateID)
        {
            var proGroup = entities.GetAllProGroupsOfSubCate(subCateID).ToList();
            if (proGroup == null)
            {
                return NotFound();
            }
            return Ok(proGroup);
        }

        [Route("api/allProductGroups")]
        [HttpGet]
        public IHttpActionResult getAll()
        {
            var proGroup = entities.sp_get_product_groups().ToList();
            if (proGroup == null)
            {
                return NotFound();
            }
            return Ok(proGroup);
        }
    }
}
