using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;
namespace JewelryStoreService.Controllers
{
    public class CartController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();

        [Route("api/checkOut")]
        [AcceptVerbs("GET", "POST")]
        [HttpPut]
        public IHttpActionResult checkOut(int userId, string name, string phone, string email, string address, string note)
        {

            var cartId = entities.Carts.Where(cart => cart.UserId == userId).ToList();
            if (cartId.Count == 0)
            {
                return Ok(-2);
            }
            int id = cartId[0].Id;
            var ci = entities.CartItems.Where(c => c.CartId == id).ToList();
            if (ci.Count == 0)
            {
                return Ok(-3);
            }
            for (int i = 0; i < ci.Count; i++)
            {
                var product = entities.Products.Find(ci[i].ProId);
                if(product.Stock<ci[i].Quantity)
                    return Ok(-1);
            }
            var result = entities.CheckOut(userId, name, phone, email, address, note);

            return Ok(result);
        }

        [Route("api/cartCount")]
        [HttpGet]
        public IHttpActionResult getCartCount(int userId)
        {
            var count = entities.GetCartCount(userId).ToList();
            if (count == null)
            {
                return NotFound();
            }
            return Ok(count);
        }


    }
}
