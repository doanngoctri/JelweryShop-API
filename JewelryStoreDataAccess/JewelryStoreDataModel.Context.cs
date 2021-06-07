﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace JewelryStoreDataAccess
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class JewelryStoreDBEntities : DbContext
    {
        public JewelryStoreDBEntities()
            : base("name=JewelryStoreDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Advertisment> Advertisments { get; set; }
        public virtual DbSet<CartItem> CartItems { get; set; }
        public virtual DbSet<Cart> Carts { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<OderItem> OderItems { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<ProductGroup> ProductGroups { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<Status> Statuses { get; set; }
        public virtual DbSet<SubCategory> SubCategories { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<User> Users { get; set; }
    
        public virtual ObjectResult<SignUp_Result> SignUp(string name, string email, string phone, string username, string password, string address)
        {
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var phoneParameter = phone != null ?
                new ObjectParameter("phone", phone) :
                new ObjectParameter("phone", typeof(string));
    
            var usernameParameter = username != null ?
                new ObjectParameter("username", username) :
                new ObjectParameter("username", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            var addressParameter = address != null ?
                new ObjectParameter("address", address) :
                new ObjectParameter("address", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SignUp_Result>("SignUp", nameParameter, emailParameter, phoneParameter, usernameParameter, passwordParameter, addressParameter);
        }
    
        public virtual int sp_alterdiagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_alterdiagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_creatediagram(string diagramname, Nullable<int> owner_id, Nullable<int> version, byte[] definition)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var versionParameter = version.HasValue ?
                new ObjectParameter("version", version) :
                new ObjectParameter("version", typeof(int));
    
            var definitionParameter = definition != null ?
                new ObjectParameter("definition", definition) :
                new ObjectParameter("definition", typeof(byte[]));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_creatediagram", diagramnameParameter, owner_idParameter, versionParameter, definitionParameter);
        }
    
        public virtual int sp_dropdiagram(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_dropdiagram", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagramdefinition_Result> sp_helpdiagramdefinition(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagramdefinition_Result>("sp_helpdiagramdefinition", diagramnameParameter, owner_idParameter);
        }
    
        public virtual ObjectResult<sp_helpdiagrams_Result> sp_helpdiagrams(string diagramname, Nullable<int> owner_id)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_helpdiagrams_Result>("sp_helpdiagrams", diagramnameParameter, owner_idParameter);
        }
    
        public virtual int sp_renamediagram(string diagramname, Nullable<int> owner_id, string new_diagramname)
        {
            var diagramnameParameter = diagramname != null ?
                new ObjectParameter("diagramname", diagramname) :
                new ObjectParameter("diagramname", typeof(string));
    
            var owner_idParameter = owner_id.HasValue ?
                new ObjectParameter("owner_id", owner_id) :
                new ObjectParameter("owner_id", typeof(int));
    
            var new_diagramnameParameter = new_diagramname != null ?
                new ObjectParameter("new_diagramname", new_diagramname) :
                new ObjectParameter("new_diagramname", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_renamediagram", diagramnameParameter, owner_idParameter, new_diagramnameParameter);
        }
    
        public virtual int sp_upgraddiagrams()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_upgraddiagrams");
        }
    
        public virtual ObjectResult<Login_Result> Login(string input, string password)
        {
            var inputParameter = input != null ?
                new ObjectParameter("input", input) :
                new ObjectParameter("input", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("password", password) :
                new ObjectParameter("password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Login_Result>("Login", inputParameter, passwordParameter);
        }
    
        public virtual ObjectResult<ChangePass_Result> ChangePass(Nullable<int> userID, string oldPass, string newPass)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            var oldPassParameter = oldPass != null ?
                new ObjectParameter("oldPass", oldPass) :
                new ObjectParameter("oldPass", typeof(string));
    
            var newPassParameter = newPass != null ?
                new ObjectParameter("newPass", newPass) :
                new ObjectParameter("newPass", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ChangePass_Result>("ChangePass", userIDParameter, oldPassParameter, newPassParameter);
        }
    
        public virtual ObjectResult<CheckOut_Result> CheckOut(Nullable<int> userID, string name, string phone, string email, string address, string note)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var phoneParameter = phone != null ?
                new ObjectParameter("phone", phone) :
                new ObjectParameter("phone", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var addressParameter = address != null ?
                new ObjectParameter("address", address) :
                new ObjectParameter("address", typeof(string));
    
            var noteParameter = note != null ?
                new ObjectParameter("note", note) :
                new ObjectParameter("note", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<CheckOut_Result>("CheckOut", userIDParameter, nameParameter, phoneParameter, emailParameter, addressParameter, noteParameter);
        }
    
        public virtual ObjectResult<DeleteCartItem_Result> DeleteCartItem(Nullable<int> userID, Nullable<int> productID)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            var productIDParameter = productID.HasValue ?
                new ObjectParameter("productID", productID) :
                new ObjectParameter("productID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<DeleteCartItem_Result>("DeleteCartItem", userIDParameter, productIDParameter);
        }
    
        public virtual ObjectResult<GetAllAdvs_Result> GetAllAdvs()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllAdvs_Result>("GetAllAdvs");
        }
    
        public virtual ObjectResult<GetAllCategories_Result> GetAllCategories()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllCategories_Result>("GetAllCategories");
        }
    
        public virtual ObjectResult<GetAllOrdersOfUser_Result> GetAllOrdersOfUser(Nullable<int> userID)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllOrdersOfUser_Result>("GetAllOrdersOfUser", userIDParameter);
        }
    
        public virtual ObjectResult<GetAllProductGroups_Result> GetAllProductGroups()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllProductGroups_Result>("GetAllProductGroups");
        }
    
        public virtual ObjectResult<GetAllProducts_Result> GetAllProducts()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllProducts_Result>("GetAllProducts");
        }
    
        public virtual ObjectResult<GetAllProductsOfCart_Result> GetAllProductsOfCart(Nullable<int> userID)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllProductsOfCart_Result>("GetAllProductsOfCart", userIDParameter);
        }
    
        public virtual ObjectResult<GetAllProGroupsOfSubCate_Result> GetAllProGroupsOfSubCate(Nullable<int> subCateID)
        {
            var subCateIDParameter = subCateID.HasValue ?
                new ObjectParameter("subCateID", subCateID) :
                new ObjectParameter("subCateID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllProGroupsOfSubCate_Result>("GetAllProGroupsOfSubCate", subCateIDParameter);
        }
    
        public virtual ObjectResult<GetAllProsOfProGroup_Result> GetAllProsOfProGroup(Nullable<int> proGroupID)
        {
            var proGroupIDParameter = proGroupID.HasValue ?
                new ObjectParameter("proGroupID", proGroupID) :
                new ObjectParameter("proGroupID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllProsOfProGroup_Result>("GetAllProsOfProGroup", proGroupIDParameter);
        }
    
        public virtual ObjectResult<GetAllSalePros_Result> GetAllSalePros()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllSalePros_Result>("GetAllSalePros");
        }
    
        public virtual ObjectResult<GetAllSubCategories_Result> GetAllSubCategories()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllSubCategories_Result>("GetAllSubCategories");
        }
    
        public virtual ObjectResult<GetAllSubCatesOfCate_Result> GetAllSubCatesOfCate(Nullable<int> cateID)
        {
            var cateIDParameter = cateID.HasValue ?
                new ObjectParameter("cateID", cateID) :
                new ObjectParameter("cateID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetAllSubCatesOfCate_Result>("GetAllSubCatesOfCate", cateIDParameter);
        }
    
        public virtual ObjectResult<Nullable<int>> GetCartCount(Nullable<int> userID)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Nullable<int>>("GetCartCount", userIDParameter);
        }
    
        public virtual ObjectResult<GetDetailProductById_Result> GetDetailProductById(Nullable<int> productID)
        {
            var productIDParameter = productID.HasValue ?
                new ObjectParameter("productID", productID) :
                new ObjectParameter("productID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetDetailProductById_Result>("GetDetailProductById", productIDParameter);
        }
    
        public virtual ObjectResult<GetOderItemByOder_Result> GetOderItemByOder(Nullable<int> oderID)
        {
            var oderIDParameter = oderID.HasValue ?
                new ObjectParameter("oderID", oderID) :
                new ObjectParameter("oderID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetOderItemByOder_Result>("GetOderItemByOder", oderIDParameter);
        }
    
        public virtual ObjectResult<GetOrderByStatus_Result> GetOrderByStatus(Nullable<int> statusID)
        {
            var statusIDParameter = statusID.HasValue ?
                new ObjectParameter("statusID", statusID) :
                new ObjectParameter("statusID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetOrderByStatus_Result>("GetOrderByStatus", statusIDParameter);
        }
    
        public virtual ObjectResult<GetUserInfoByID_Result> GetUserInfoByID(Nullable<int> userID)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("UserID", userID) :
                new ObjectParameter("UserID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GetUserInfoByID_Result>("GetUserInfoByID", userIDParameter);
        }
    
        public virtual ObjectResult<MinusCartItem_Result> MinusCartItem(Nullable<int> userID, Nullable<int> productID)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            var productIDParameter = productID.HasValue ?
                new ObjectParameter("productID", productID) :
                new ObjectParameter("productID", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<MinusCartItem_Result>("MinusCartItem", userIDParameter, productIDParameter);
        }
    
        public virtual ObjectResult<PlusCartItem_Result> PlusCartItem(Nullable<int> userID, Nullable<int> productID, Nullable<int> quantity)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            var productIDParameter = productID.HasValue ?
                new ObjectParameter("productID", productID) :
                new ObjectParameter("productID", typeof(int));
    
            var quantityParameter = quantity.HasValue ?
                new ObjectParameter("quantity", quantity) :
                new ObjectParameter("quantity", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<PlusCartItem_Result>("PlusCartItem", userIDParameter, productIDParameter, quantityParameter);
        }
    
        public virtual ObjectResult<UpdateUserInfo_Result> UpdateUserInfo(Nullable<int> userID, string name, string email, string phone, string address, string avatar)
        {
            var userIDParameter = userID.HasValue ?
                new ObjectParameter("userID", userID) :
                new ObjectParameter("userID", typeof(int));
    
            var nameParameter = name != null ?
                new ObjectParameter("name", name) :
                new ObjectParameter("name", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("email", email) :
                new ObjectParameter("email", typeof(string));
    
            var phoneParameter = phone != null ?
                new ObjectParameter("phone", phone) :
                new ObjectParameter("phone", typeof(string));
    
            var addressParameter = address != null ?
                new ObjectParameter("address", address) :
                new ObjectParameter("address", typeof(string));
    
            var avatarParameter = avatar != null ?
                new ObjectParameter("avatar", avatar) :
                new ObjectParameter("avatar", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<UpdateUserInfo_Result>("UpdateUserInfo", userIDParameter, nameParameter, emailParameter, phoneParameter, addressParameter, avatarParameter);
        }
    
        public virtual ObjectResult<sp_get_all_orders_Result> sp_get_all_orders()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_all_orders_Result>("sp_get_all_orders");
        }
    
        public virtual ObjectResult<sp_get_detail_of_an_order_Result> sp_get_detail_of_an_order(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_detail_of_an_order_Result>("sp_get_detail_of_an_order", idParameter);
        }
    
        public virtual int sp_accept_order(Nullable<int> id)
        {
            var idParameter = id.HasValue ?
                new ObjectParameter("Id", id) :
                new ObjectParameter("Id", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_accept_order", idParameter);
        }
    
        public virtual int sp_add_new_product(Nullable<int> proGroupId, Nullable<int> stock, string name, Nullable<double> price, Nullable<double> discount, string size, string color, string image1, string image2, string image3, string description, string information)
        {
            var proGroupIdParameter = proGroupId.HasValue ?
                new ObjectParameter("ProGroupId", proGroupId) :
                new ObjectParameter("ProGroupId", typeof(int));
    
            var stockParameter = stock.HasValue ?
                new ObjectParameter("Stock", stock) :
                new ObjectParameter("Stock", typeof(int));
    
            var nameParameter = name != null ?
                new ObjectParameter("Name", name) :
                new ObjectParameter("Name", typeof(string));
    
            var priceParameter = price.HasValue ?
                new ObjectParameter("Price", price) :
                new ObjectParameter("Price", typeof(double));
    
            var discountParameter = discount.HasValue ?
                new ObjectParameter("Discount", discount) :
                new ObjectParameter("Discount", typeof(double));
    
            var sizeParameter = size != null ?
                new ObjectParameter("Size", size) :
                new ObjectParameter("Size", typeof(string));
    
            var colorParameter = color != null ?
                new ObjectParameter("Color", color) :
                new ObjectParameter("Color", typeof(string));
    
            var image1Parameter = image1 != null ?
                new ObjectParameter("Image1", image1) :
                new ObjectParameter("Image1", typeof(string));
    
            var image2Parameter = image2 != null ?
                new ObjectParameter("Image2", image2) :
                new ObjectParameter("Image2", typeof(string));
    
            var image3Parameter = image3 != null ?
                new ObjectParameter("Image3", image3) :
                new ObjectParameter("Image3", typeof(string));
    
            var descriptionParameter = description != null ?
                new ObjectParameter("Description", description) :
                new ObjectParameter("Description", typeof(string));
    
            var informationParameter = information != null ?
                new ObjectParameter("Information", information) :
                new ObjectParameter("Information", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("sp_add_new_product", proGroupIdParameter, stockParameter, nameParameter, priceParameter, discountParameter, sizeParameter, colorParameter, image1Parameter, image2Parameter, image3Parameter, descriptionParameter, informationParameter);
        }
    
        public virtual ObjectResult<sp_top_ten_Result> sp_top_ten()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_top_ten_Result>("sp_top_ten");
        }
    
        public virtual ObjectResult<sp_statistic_from_to_Result> sp_statistic_from_to(string from, string to)
        {
            var fromParameter = from != null ?
                new ObjectParameter("from", from) :
                new ObjectParameter("from", typeof(string));
    
            var toParameter = to != null ?
                new ObjectParameter("to", to) :
                new ObjectParameter("to", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_statistic_from_to_Result>("sp_statistic_from_to", fromParameter, toParameter);
        }
    
        public virtual ObjectResult<sp_get_product_groups_Result> sp_get_product_groups()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_product_groups_Result>("sp_get_product_groups");
        }
    
        public virtual ObjectResult<sp_get_item_of_an_order_Result> sp_get_item_of_an_order(Nullable<int> orderId)
        {
            var orderIdParameter = orderId.HasValue ?
                new ObjectParameter("OrderId", orderId) :
                new ObjectParameter("OrderId", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<sp_get_item_of_an_order_Result>("sp_get_item_of_an_order", orderIdParameter);
        }
    }
}