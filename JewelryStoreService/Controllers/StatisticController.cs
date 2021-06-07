using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using JewelryStoreDataAccess;
namespace JewelryStoreService.Controllers
{
    public class StatisticController : ApiController
    {

        JewelryStoreDBEntities entities = new JewelryStoreDBEntities();


        // GET: api/Statistic
        public IHttpActionResult Get()
        {
            var list = entities.sp_top_ten().ToList();
            return Ok(list);
        }

        // GET: api/Statistic/5
        public IHttpActionResult Get(string from,string to)
        {
            var list = entities.sp_statistic_from_to(from,to).ToList();
            return Ok(list);
        }

        // POST: api/Statistic
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Statistic/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Statistic/5
        public void Delete(int id)
        {
        }
    }
}
