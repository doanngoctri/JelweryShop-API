using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;
namespace JewelryStoreService.Controllers
{
    public class AdvertisementController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();
        [Route("api/allAdvertisments")]
        [HttpGet]
        public IHttpActionResult getSubAllCategories()
        {
            var adv = entities.GetAllAdvs().ToList();
            if (adv == null)
            {
                return NotFound();
            }
            return Ok(adv);
        }
    }
}
