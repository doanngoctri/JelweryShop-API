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

        [Route("api/allOrders")]
        [HttpGet]
        public IHttpActionResult getAllOrders()
        {
            var order = entities.sp_get_all_orders().ToList();
            if (order == null)
            {
                return NotFound();
            }
            return Ok(order);
        }

        [Route("api/statusOrder")]
        [HttpPut]
        public IHttpActionResult changeStatusOfAnOrder(int Id)
        {
            var orderid = entities.Orders.Find(Id);
            if (orderid == null)
            {
                return Ok(-1);
            }
            var order = entities.sp_accept_order(Id);
            return Ok(0);
        }

        [Route("api/updateOrder")]
        [HttpPut]
        public IHttpActionResult UpdateOfAnOrder(int Id)
        {
            var orderid = entities.Orders.Find(Id);
            if (orderid == null)
            {
                return Ok(-1);
            }
            orderid.StatusId = orderid.StatusId + 1;
            if (orderid.StatusId > 6)
            {
                orderid.StatusId = 6;
            }
            entities.SaveChanges();
            return Ok(0);
        }

        [Route("api/CancelOrder")]
        [HttpPut]
        public IHttpActionResult CancelAnOrder(int Id)
        {
            var orderid = entities.Orders.Find(Id);
            if (orderid == null)
            {
                return Ok(-1);
            }
            foreach (OderItem item in orderid.OderItems.ToList())
            {
                var product = entities.Products.Find(item.ProId);
                product.Stock = product.Stock + item.Quantity;
            }
            orderid.StatusId = 6;
            entities.SaveChanges();
            return Ok(0);
        }

    }
}
