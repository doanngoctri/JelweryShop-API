using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CloudinaryDotNet;
using CloudinaryDotNet.Actions;

namespace JewelryStoreService.Controllers
{
    public class UploadImage
    {
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