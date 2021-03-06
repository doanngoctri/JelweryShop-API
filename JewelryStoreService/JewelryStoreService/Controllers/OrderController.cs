using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;

namespace JewelryStoreService.Controllers
{
    public class OrderController : ApiController
    {
        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();

        [Route("api/allOrdersOfUser")]
        [HttpGet]
        public IHttpActionResult getAllOrdersOfUser(int userId)
        {
            var order = entities.GetAllOrdersOfUser(userId).ToList();
            if (order == null)
            {
                return NotFound();
            }
            return Ok(order);
        }

        [Route("api/orderByStatus")]
        [HttpGet]
        public IHttpActionResult getOrderByStatus(int statusId)
        {
            var order = entities.GetOrderByStatus(statusId).ToList();
            if (order == null)
            {
                return NotFound();
            }
            return Ok(order);
        }
    }
}
