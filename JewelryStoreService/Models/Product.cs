using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JewelryStoreService.Models
{
    public class Product
    {
        public int Id { get; set; }
        public int ProGroupId { get; set; }
        public int Stock { get; set; }
        public string Name { get; set; }
        public float Price { get; set; }
        public float Discount { get; set; }
        public string Size { get; set; }
        public string Color { get; set; }
        public string Image1 { get; set; }
        public string Image2 { get; set; }
        public string Image3 { get; set; }
        public bool Display { get; set; }
        public string Description { get; set; }
        public string Information { get; set; }
    }
}