using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;
namespace JewelryStoreService.Controllers
{
    public class OrderItemController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();

        [Route("api/orderItemOfOrder")]
        [HttpGet]
        public IHttpActionResult getOrderItemOfOrder(int orderId)
        {
            var order = entities.GetOderItemByOder(orderId).ToList();
            if (order == null)
            {
                return NotFound();
            }
            return Ok(order);
        }
        [Route("api/orderItemOfOrderDetail")]
        [HttpGet]
        public IHttpActionResult getOrderItemOfOrderDetail(int orderId)
        {
            var order = entities.sp_get_item_of_an_order(orderId).ToList();
            if (order == null)
            {
                return NotFound();
            }
            return Ok(order);
        }
    }
}
