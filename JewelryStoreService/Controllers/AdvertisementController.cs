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
            List<GetDetailProductById_Result> list = new List<GetDetailProductById_Result>();
            for (int i = 0; i < adv.Count; i++)
            {
                var product = entities.GetDetailProductById(adv[i].ProId).ToList();
                //var proinf;
                if (product.Count > 0)
                {
                    var proinf = product[0];
                    list.Add(proinf);
                }
            }
            if (adv == null)
            {
                return NotFound();
            }
            return Ok(list);
        }
        [Route("api/Advertisments")]
        [HttpPost]
        public IHttpActionResult post(int proId)
        {
            var alr = entities.Advertisments.Where(e => e.ProId == proId).ToList();
            if (alr.Count > 0)
            {
                return Ok(-2);
            }
            var product = entities.Products.Find(proId);
            if(product == null)
            {
                return Ok(-1);
            }
            Advertisment ad = new Advertisment();
            ad.Product = product;
            ad.ProId = proId;
            entities.Advertisments.Add(ad);
            entities.SaveChanges();
            return Ok(0);
        }


        [Route("api/Advertisments")]
        [HttpDelete]
        public IHttpActionResult delete(int proId)
        {
            var alr = entities.Advertisments.Where(e => e.ProId == proId).ToList();
            if (alr.Count != 1)
            {
                return Ok(-2);
            }
            entities.Advertisments.Remove(alr[0]);
            entities.SaveChanges();
            return Ok(0);
        }


    }
}
