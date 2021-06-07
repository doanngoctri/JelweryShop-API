using System;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web.Http;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
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

        [Route("api/allProductsusingentity")]
        [HttpGet]
        public IHttpActionResult getAllProductss()
        {
            var product = entities.Products.AsNoTracking().ToList();
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

        [Route("api/newProduct")]
        //[AcceptVerbs("GET", "OPTIONS")]
        [HttpPost]
        public IHttpActionResult addNewProduct([FromBody] JewelryStoreService.Models.Product productt)
        {
            /* DbSet<Product> Products = entities.Products;
             Products.Add(new_product);
             entities.SaveChanges();*/
            JewelryStoreService.Models.Product new_product = productt;

            if (new_product.Image1.Length > 0)
            {
                var res = upload(new_product.Image1);
                string url = res.SecureUrl.ToString();
                if (url.Length > 0)
                    new_product.Image1 = url;
                else
                    new_product.Image1 = "";
            }
            if (new_product.Image2.Length > 0)
            {
                var res = upload(new_product.Image2);
                string url = res.SecureUrl.ToString();
                if (url.Length > 0)
                    new_product.Image2 = url;
                else
                    new_product.Image2 = "";
            }
            if (new_product.Image3.Length > 0)
            {
                var res = upload(new_product.Image3);
                string url = res.SecureUrl.ToString();
                if (url.Length > 0)
                    new_product.Image3 = url;
                else
                    new_product.Image3 = "";
            }
            var product = entities.sp_add_new_product(new_product.ProGroupId, new_product.Stock, new_product.Name, new_product.Price, new_product.Discount, new_product.Size, new_product.Color, new_product.Image1, new_product.Image2, new_product.Image3, new_product.Description, new_product.Information);
            if (product == null)
            {
                return NotFound();
            }
            return Ok(1);
        }
        

        [Route("api/newProduct")]
        [AcceptVerbs("POST")]
        [HttpGet]
        public IHttpActionResult addNewProduct(int ProGroupId, int Stock, string Name, float Price, float Discount, string Size, string Color, string Image1, string Image2, string Image3, string Description, string Information)
        {
            //DbSet<Product> Products = entities.Products;
            //Products.Add(new_product);
            //entities.SaveChanges();
            var product = entities.sp_add_new_product(ProGroupId,Stock,Name,Price,Discount,Size,Color,Image1,Image2,Image3,Description,Information);
            if (product == null)
            {
                return NotFound();
            }
            return Ok(1);
        }

        [Route("api/Product")]
        [HttpPut]
        public IHttpActionResult putProduct([FromBody] JewelryStoreService.Models.Product new_product)
        {
            DbSet<Product> Products = entities.Products;
            var old_product = Products.Find(new_product.Id);
            if (old_product == null)
            {
                return Ok(-1);
            }
            old_product.Image1 = new_product.Image1;
            old_product.Image2 = new_product.Image2;
            old_product.Image3 = new_product.Image3;
            old_product.Information = new_product.Information;
            old_product.Name = new_product.Name;
            old_product.Price = new_product.Price;
            old_product.Size = new_product.Size;
            old_product.Stock = new_product.Stock;
            old_product.Description = new_product.Description;
            old_product.Discount = new_product.Discount;
            old_product.Display = new_product.Display;
            entities.SaveChanges();
            return Ok(1);
        }


        [Route("api/Product")]
        [AcceptVerbs("PUT")]
        [HttpGet]
        public IHttpActionResult putpaProduct(int id,int ProGroupId, int Stock, string Name, float Price, float Discount, string Size, string Color, string Image1, string Image2, string Image3, string Description, string Information,bool Display)
        {
            DbSet<Product> Products = entities.Products;
            var old_product = Products.Find(id);

            old_product.Image1 = Image1;
            old_product.Image2 = Image2;
            old_product.Image3 = Image3;
            old_product.Information = Information;
            old_product.Name = Name;
            old_product.Price = Price;
            old_product.Size = Size;
            old_product.Stock = Stock;
            old_product.Description = Description;
            old_product.Discount = Discount;
            old_product.Display = Display;
            entities.SaveChanges();
            return Ok();
        }

        private ImageUploadResult upload(string data)
        {
            byte[] bytes = Convert.FromBase64String(data);
            var myAccount = new Account { ApiKey = "589988335247838", ApiSecret = "Q-B8VFqkd6GrPKjC43zMI5vfTfc", Cloud = "doanngoctri" };
            Cloudinary _cloudinary = new Cloudinary(myAccount);
            //string path = "file.png";
            //File.WriteAllBytes(path, bytes);
            using (MemoryStream ms = new MemoryStream(bytes))
            {
                var uploadParams = new ImageUploadParams()
                {
                    File = new FileDescription(@"file.png", ms)
                };
                var uploadResult = _cloudinary.Upload(uploadParams);
                return uploadResult;
            }
        }

    }
}
