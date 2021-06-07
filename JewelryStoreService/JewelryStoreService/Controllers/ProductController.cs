using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;

namespace JewelryStoreService.Controllers
{
    
    public class ProductController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();
        [Route("api/allProducts")]
        [HttpGet]
        public IHttpActionResult getAllProducts()
        {
            var product = entities.GetAllProducts().ToList();
            if (product == null)
            {
                return NotFound();
            }
            return Ok(product);
        }

        [Route("api/allProsOfProGroup")]
        [HttpGet]
        public IHttpActionResult getAllProsOfProGroup(int proGroupID)
        {
            var pro = entities.GetAllProsOfProGroup(proGroupID).ToList();
            if (pro == null)
            {
                return NotFound();
            }
            return Ok(pro);
        }

        [Route("api/allProsOfCart")]
        [HttpGet]
        public IHttpActionResult getAllProductsOfCart(int userId)
        {
            var product = entities.GetAllProductsOfCart(userId).ToList();
            if (product == null)
            {
                return NotFound();
            }
            return Ok(product);
        }
        [Route("api/allSalePros")]
        [HttpGet]
        public IHttpActionResult getAllSaleProducts()
        {
            var product = entities.GetAllSalePros().ToList();
            if (product == null)
            {
                return NotFound();
            }
            return Ok(product);
        }

        [Route("api/proDetail")]
        [HttpGet]
        public IHttpActionResult getProductDetailById(int proId)
        {
            var product = entities.GetDetailProductById(proId).ToList();
            if (product == null)
            {
                return NotFound();
            }
            return Ok(product);
        }

    }
}
