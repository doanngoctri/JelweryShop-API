USE [master]
GO
/****** Object:  Database [JewelryStoreDB]    Script Date: 6/7/2021 11:36:52 AM ******/
CREATE DATABASE [JewelryStoreDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JewelryStoreDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JewelryStoreDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JewelryStoreDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JewelryStoreDB_log.ldf' , SIZE = 2112KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JewelryStoreDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JewelryStoreDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JewelryStoreDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JewelryStoreDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JewelryStoreDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JewelryStoreDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JewelryStoreDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET RECOVERY FULL 
GO
ALTER DATABASE [JewelryStoreDB] SET  MULTI_USER 
GO
ALTER DATABASE [JewelryStoreDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JewelryStoreDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JewelryStoreDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JewelryStoreDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JewelryStoreDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'JewelryStoreDB', N'ON'
GO
USE [JewelryStoreDB]
GO
/****** Object:  Table [dbo].[Advertisments]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertisments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](500) NULL,
	[ProId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Carts]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OderItems]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BuyingDay] [date] NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Note] [nvarchar](50) NULL,
	[StatusId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductGroups]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductGroups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SubCateId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProGroupId] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[Size] [nvarchar](20) NOT NULL,
	[Color] [nvarchar](20) NOT NULL,
	[Image1] [nvarchar](500) NULL,
	[Image2] [nvarchar](500) NULL,
	[Image3] [nvarchar](500) NULL,
	[Display] [bit] NULL,
	[Description] [nvarchar](100) NULL,
	[Information] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Statuses]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Statuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CateId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [varchar](15) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Username] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Avatar] [nvarchar](500) NULL,
	[RoleId] [int] NOT NULL,
	[Lock] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Advertisments] ON 

INSERT [dbo].[Advertisments] ([Id], [Image], [ProId]) VALUES (1, NULL, 2)
INSERT [dbo].[Advertisments] ([Id], [Image], [ProId]) VALUES (2, NULL, 3)
SET IDENTITY_INSERT [dbo].[Advertisments] OFF
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (1, 2)
INSERT [dbo].[Carts] ([Id], [UserId]) VALUES (2, 3)
SET IDENTITY_INSERT [dbo].[Carts] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Hàng mới')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Trang sức vàng')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[OderItems] ON 

INSERT [dbo].[OderItems] ([Id], [Quantity], [UnitPrice], [OrderId], [ProId]) VALUES (1, 2, 1, 3, 2)
SET IDENTITY_INSERT [dbo].[OderItems] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [BuyingDay], [Name], [Phone], [Email], [Address], [Note], [StatusId]) VALUES (3, 1, CAST(N'2000-09-01' AS Date), N'Người mua', N'09', N'@gmail', N'21', N'', 6)
INSERT [dbo].[Orders] ([Id], [UserId], [BuyingDay], [Name], [Phone], [Email], [Address], [Note], [StatusId]) VALUES (5, 2, CAST(N'2000-01-01' AS Date), N'Số Hai', N'08', N'@outlook', N'22', NULL, 2)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductGroups] ON 

INSERT [dbo].[ProductGroups] ([Id], [Name], [SubCateId]) VALUES (1, N'Nhẫn', 1)
INSERT [dbo].[ProductGroups] ([Id], [Name], [SubCateId]) VALUES (2, N'Bông Tai', 1)
INSERT [dbo].[ProductGroups] ([Id], [Name], [SubCateId]) VALUES (4, N'Vòng Tay', 1)
INSERT [dbo].[ProductGroups] ([Id], [Name], [SubCateId]) VALUES (5, N'Dây Chuyền', 1)
SET IDENTITY_INSERT [dbo].[ProductGroups] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (2, 1, 12, N'VỎ BÔNG TAI KIM CƯƠNG VÀNG TRẮNG 18K PNJ 00DDW000198', 24491000, 0, N'10mm,12mm,15mm', N'white,pink', N'', N'https://www.pnj.com.vn/vo-bong-tai-kim-cuong-vang-trang-18k-pnj-00ddw000198.html?gender=female&category=bong-tai_bong-tai-vang-pnj', N'https://www.pnj.com.vn/vo-bong-tai-kim-cuong-vang-trang-18k-pnj-00ddw000198.html?gender=female&category=bong-tai_bong-tai-vang-pnj', NULL, NULL, N'Brand:
PNJ
 
Loại đá chính:
Không gắn đá
 
Loại đá phụ (nếu có):
Diamond
 
Gender:
Nữ
 
Quà tặng cho người thân:
Cho Nàng
Cho Mẹ
 
Trọng lượng vàng tham khảo (phân vàng):
7.03263
 
Ổ hột:
4.0 ly
 
Chủng loại:
Bông tai
 
Tuổi vàng:  Vàng 18K')
INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (3, 1, 10, N'bạch kim', 12, 0, N'nhiều', N'bạch kim', N'123', NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (4, 1, 10, N'bạch kim', 12, 0, N'nhiều', N'bạch kim', N'123', NULL, NULL, 1, NULL, NULL)
INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (5, 1, 10, N'bạch kim', 12, 0, N'nhiều', N'bạch kim', N'123', N'789798743', NULL, 1, NULL, NULL)
INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (6, 1, 10, N'bạch kim', 12, 0, N'nhiều', N'bạch kim', N'123', N'789798743', NULL, 1, NULL, NULL)
INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (7, 1, 10, N'bạch kim', 12, 0, N'nhiều', N'bạch kim', N'123', N'789798743', NULL, 1, NULL, NULL)
INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (8, 1, 10, N'bạch kim', 12, 0, N'nhiều', N'bạch kim', N'123', N'789798743', NULL, 1, NULL, NULL)
INSERT [dbo].[Products] ([Id], [ProGroupId], [Stock], [Name], [Price], [Discount], [Size], [Color], [Image1], [Image2], [Image3], [Display], [Description], [Information]) VALUES (9, 1, 10, N'bạch kim', 12, 0, N'nhiều', N'bạch kim', N'123', N'789798743', NULL, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (1, N'User')
INSERT [dbo].[Roles] ([Id], [RoleName]) VALUES (2, N'Admin')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Statuses] ON 

INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (1, N'Đã Đặt Hàng')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (2, N'Đang Chuẩn Bị Hàng')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (3, N'Đang Giao Hàng')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (4, N'Đã Giao Hàng')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (5, N'Người Dùng Xác Nhận')
INSERT [dbo].[Statuses] ([Id], [StatusName]) VALUES (6, N'Đã Hủy')
SET IDENTITY_INSERT [dbo].[Statuses] OFF
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([Id], [Name], [CateId]) VALUES (1, N'Bông tai', 2)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (1, N'Tên Mới đổi', N'emailnew', N'09', N'97 man thiện', N'tuannguyen7898', N'781998', N'null', 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (2, N'tuannguyen', N'anhtuan@gmail.com', N'0123456789', N'sá', N'tuan', N'ss', NULL, 1, 0)
INSERT [dbo].[Users] ([Id], [Name], [Email], [Phone], [Address], [Username], [Password], [Avatar], [RoleId], [Lock]) VALUES (3, N't', N't7898@gmail.com', N'12345', N'District9', N'tuannguyen', N'123', NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Index [UQ__Carts__1788CC4DD72CBEF0]    Script Date: 6/7/2021 11:36:52 AM ******/
ALTER TABLE [dbo].[Carts] ADD UNIQUE NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Advertisments]  WITH CHECK ADD  CONSTRAINT [FK_Advert_Pro] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Advertisments] CHECK CONSTRAINT [FK_Advert_Pro]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [FK_CartItem_Cart] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [FK_CartItem_Cart]
GO
ALTER TABLE [dbo].[CartItems]  WITH CHECK ADD  CONSTRAINT [fk_CartItem_Pro] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[CartItems] CHECK CONSTRAINT [fk_CartItem_Pro]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Cart_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Cart_User]
GO
ALTER TABLE [dbo].[OderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OderItems] CHECK CONSTRAINT [FK_OrderItem_Order]
GO
ALTER TABLE [dbo].[OderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Pro] FOREIGN KEY([ProId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[OderItems] CHECK CONSTRAINT [FK_OrderItem_Pro]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Statuses] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[ProductGroups]  WITH CHECK ADD  CONSTRAINT [FK_Pro_SubCate] FOREIGN KEY([SubCateId])
REFERENCES [dbo].[SubCategories] ([Id])
GO
ALTER TABLE [dbo].[ProductGroups] CHECK CONSTRAINT [FK_Pro_SubCate]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Pro_ProGroup] FOREIGN KEY([ProGroupId])
REFERENCES [dbo].[ProductGroups] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Pro_ProGroup]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCate_Cate] FOREIGN KEY([CateId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCate_Cate]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_Role]
GO
/****** Object:  StoredProcedure [dbo].[ChangePass]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ChangePass]
	@userID INT,
	@oldPass NVARCHAR(30),
	@newPass NVARCHAR(30)
AS 
BEGIN
	IF EXISTS(SELECT * FROM dbo.Users WHERE Id = @userID AND Password != @oldPass)
		SELECT -1 AS result, N'Mật khẩu cũ không đúng' as Column1 --Mật khẩu cũ ko đúng
	ELSE 
		BEGIN
			UPDATE dbo.Users
			SET Password = @newPass
			WHERE Id = @userID
			SELECT 1 AS result, N'Thay đổi thành công' as Column1 --Mật khẩu đổi thành công
		END
END


GO
/****** Object:  StoredProcedure [dbo].[CheckOut]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckOut]
	@userID INT,
	@name NVARCHAR(50),
	@phone VARCHAR(15),
	@email NVARCHAR(50),
	@address NVARCHAR(100),
	@note NVARCHAR(50)
AS
BEGIN
	DECLARE @cartID INT = 0
	SET @cartID = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET XACT_ABORT ON
	BEGIN TRY
		BEGIN TRANSACTION

		--xử lý
		INSERT dbo.Orders
		        ( UserId ,
		          BuyingDay ,
		          Name ,
		          Phone ,
		          Email ,
		          Address ,
		          Note ,
		          StatusId
		        )
		VALUES  ( @userID, -- UserId - int
		          GETDATE() , -- BuyingDay - date
		          @name , -- Name - nvarchar(30)
		          @phone , -- Phone - nvarchar(15)
		          @email , -- Email - nvarchar(50)
		          @address , -- Address - nvarchar(100)
		          @note , -- Note - nvarchar(50)
		          1  -- StatusId - int
		        )
		INSERT INTO dbo.OderItems
		        ( Quantity, UnitPrice, OrderId, ProId )
		SELECT ci.Quantity, pro.Price - (pro.Price * pro.Discount), (SELECT TOP(1)Id FROM dbo.Orders ORDER BY Id DESC),ci.ProId
		FROM dbo.CartItems ci INNER JOIN dbo.Products pro ON pro.Id = ci.ProId
		WHERE ci.CartId = @cartID

		UPDATE dbo.Products SET Stock = Stock - oi.Quantity
		FROM dbo.Products pro INNER JOIN dbo.OderItems oi ON oi.ProId = pro.Id
		WHERE oi.OrderId = (SELECT TOP(1) Id FROM dbo.Orders ORDER BY Id DESC)

		DELETE dbo.CartItems
		WHERE CartId = @cartID

		IF(@@TRANCOUNT >0)
		BEGIN
			PRINT 'Commit Success'
			COMMIT TRANSACTION
			SELECT 1 AS result, N'thành công' AS message    -- Thành công
		END
	END TRY
	BEGIN CATCH
		IF(@@TRANCOUNT>0)
		BEGIN
			ROLLBACK TRANSACTION
			PRINT 'Commit Failure'
			SELECT 0 AS result, N'thất bại' AS message -- Thất bại
		END
	END CATCH
END



GO
/****** Object:  StoredProcedure [dbo].[DeleteCartItem]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteCartItem]
	@userID INT,
	@productID INT
AS
BEGIN
	DECLARE @cartId INT = 0
	DECLARE @cartItemId INT = 0

	SET  @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET @cartItemId = (SELECT Id FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productID)

	IF(@cartItemId > 0)
		BEGIN
			DELETE dbo.CartItems
			WHERE Id = @cartItemId

			SELECT 1 AS result, N'thành công' AS message --thành công
		END
	ELSE
		SELECT 0 AS result, N'thất bại' AS message --thất bại
END






GO
/****** Object:  StoredProcedure [dbo].[GetAllAdvs]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllAdvs]
 AS
 BEGIN
 	SELECT * 
	FROM dbo.Advertisments
 END 


GO
/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE PROCEDURE [dbo].[GetAllCategories]
 AS
 BEGIN
 	SELECT * FROM dbo.Categories
 END


GO
/****** Object:  StoredProcedure [dbo].[GetAllOrdersOfUser]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllOrdersOfUser]
	@userID INT
AS
BEGIN
	SELECT * FROM dbo.Orders
	WHERE UserId = @userID
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllProductGroups]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProductGroups]
AS
BEGIN
	SELECT * FROM dbo.ProductGroups
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllProducts]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProducts]
AS

BEGIN
	SELECT * FROM dbo.Products
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllProductsOfCart]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProductsOfCart]
	@userID INT
AS

BEGIN
	SELECT pro.*, ci.Quantity
	FROM dbo.Products pro INNER JOIN dbo.CartItems ci ON ci.ProId = pro.Id
	WHERE ci.CartId = (SELECT Id FROM CartS WHERE UserId = @userID)
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllProGroupsOfSubCate]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProGroupsOfSubCate]
	@subCateID INT
AS
BEGIN
	SELECT * FROM dbo.ProductGroups
	WHERE SubCateId = @subCateID
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllProsOfProGroup]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllProsOfProGroup]
	@proGroupID INT
AS
BEGIN
	SELECT * FROM dbo.Products
	WHERE ProGroupId = @proGroupID
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllSalePros]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSalePros]
AS
BEGIN
	SELECT * FROM Products
	 WHERE Discount>0
END


GO
/****** Object:  StoredProcedure [dbo].[GetAllSubCategories]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSubCategories]
AS
BEGIN
	SELECT * FROM dbo.SubCategories
END 


GO
/****** Object:  StoredProcedure [dbo].[GetAllSubCatesOfCate]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllSubCatesOfCate]
	@cateID INT
AS
BEGIN
	SELECT * FROM dbo.SubCategories
	WHERE CateId = @cateID
END


GO
/****** Object:  StoredProcedure [dbo].[GetCartCount]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCartCount]
@userID INT
AS
BEGIN
	SELECT COUNT(ProID)
	FROM dbo.CartItems INNER JOIN dbo.Carts
	ON Carts.Id = CartItems.CartId
	WHERE UserId = @userID
END


GO
/****** Object:  StoredProcedure [dbo].[GetDetailProductById]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDetailProductById]
@productID INT
AS
BEGIN
	SELECT * FROM dbo.Products
	WHERE Id = @productID
END


GO
/****** Object:  StoredProcedure [dbo].[GetOderItemByOder]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOderItemByOder]
@oderID INT
AS
BEGIN
	SELECT * FROM dbo.OderItems
	WHERE OrderId = @oderID
END


GO
/****** Object:  StoredProcedure [dbo].[GetOrderByStatus]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetOrderByStatus]
@statusID INT
AS
BEGIN
	SELECT * FROM dbo.Orders
	WHERE StatusId = @statusID
END


GO
/****** Object:  StoredProcedure [dbo].[GetUserInfoByID]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUserInfoByID]
	@UserID INT
AS
BEGIN
	SELECT * FROM dbo.Users
	WHERE Id = @UserID
END


GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Login]
	@input NVARCHAR(30),
	@password VARCHAR(30)
AS 
BEGIN
	IF NOT EXISTS (SELECT * FROM  dbo.Users WHERE Username = @input OR Email = @input OR Phone = @input)
		SELECT -1 AS result, N'sai input' AS message -- sai input
	ELSE IF EXISTS( SELECT * FROM dbo.Users WHERE((Username = @input OR Email = @input OR Phone = @input) AND Password != @password))
		SELECT -2 AS result, N'đúng username, sai password' AS message -- đúng input, sai password
	ELSE
		SELECT Id AS result, N'đăng nhập thành công' AS message -- đăng nhập thành công
		FROM dbo.Users
		WHERE (Username = @input OR Email = @input OR Phone = @input) AND Password = @password
END


GO
/****** Object:  StoredProcedure [dbo].[MinusCartItem]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[MinusCartItem]
	@userID INT,
	@productID INT
AS
BEGIN
	DECLARE @cartID INT = 0
	DECLARE @cartItemID INT = 0
	DECLARE @quantity INT = 0

	SET @cartID = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET @cartItemID = (SELECT Id FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productID)
	SET @quantity = (SELECT Quantity FROM dbo.CartItems WHERE CartId = @cartID AND ProId = @productID)

	IF(@cartItemID >0)
		BEGIN
			IF(@quantity >1)
				BEGIN
					UPDATE dbo.CartItems
					SET Quantity = Quantity-1
					WHERE Id = @cartItemID
				END
			ELSE
				BEGIN
					DELETE dbo.CartItems
					WHERE Id = @cartItemID
				END
			SELECT 1 AS result, N'thành công' AS message --thành công
		END
	ELSE
		SELECT 0 AS result, N'thất bại' AS message -- thất bại
END


GO
/****** Object:  StoredProcedure [dbo].[PlusCartItem]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PlusCartItem]
	@userID INT,
	@productID INT,
	@quantity INT
AS
BEGIN

	if exists (select * from Users where id= @userID and RoleId = 2)
	begin
		SELECT -1 AS result, N'Admin can not buy anything. It breaks the rule' AS message
	end
	else
	begin
	DECLARE @cartId INT =0
	DECLARE @cartItemId INT = 0
	DECLARE @stock INT = 0
	declare @qua_in_cart int = 0

	SET @cartId = (SELECT Id FROM dbo.Carts WHERE UserId = @userID)
	SET @cartItemId = (SELECT Id FROM dbo.CartItems WHERE CartId = @cartId AND ProId = @productID)
	
	IF(@cartItemId >0)
		BEGIN
			SET @stock = (SELECT pro.Stock FROM dbo.Products pro INNER JOIN dbo.CartItems ci ON ci.ProId = pro.Id WHERE ci.Id = @cartItemId)
			set @qua_in_cart = (select Quantity from dbo.CartItems WHERE Id = @cartItemId)
			IF(@quantity + @qua_in_cart <= @stock)
				BEGIN
					UPDATE dbo.CartItems
					SET Quantity = Quantity + @quantity
					WHERE Id = @cartItemId

					SELECT 1 AS result, N'thành công' AS message --thành công
				END
			ELSE
				SELECT -1 AS result, N'số lượng tồn không đủ' AS message --số lượng tồn không đủ
		END
	ELSE
		BEGIN
			SET @stock = (SELECT pro.Stock FROM dbo.Products pro INNER JOIN dbo.CartItems ci ON ci.ProId = pro.Id WHERE ci.Id = @cartItemId)
			IF(@quantity <= @stock)
				BEGIN
					INSERT dbo.CartItems
			        ( Quantity, ProId, CartId )
					VALUES  ( @quantity, -- Quantity - int
							  @productID, -- ProId - int
							  @cartId  -- CartId - int
							  )	

					SELECT 1 AS result, N'thành công' AS message --thành công
				END
			ELSE
				SELECT -1 AS result, N'số lượng tồn không đủ' AS message --số lượng tồn không đủ
			
		END
	end
END


GO
/****** Object:  StoredProcedure [dbo].[SignUp]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SignUp]
	@name NVARCHAR(50),
	@email NVARCHAR(50),
	@phone VARCHAR(15),
	@username NVARCHAR(30),
	@password NVARCHAR(30),
	@address NVARCHAR(100)
AS 
BEGIN
	IF EXISTS(SELECT * FROM  Users WHERE Username = @username)
		SELECT -1 AS result, N'trùng username' AS message -- trùng username
	ELSE IF EXISTS (SELECT * FROM Users WHERE Email = @email)
		SELECT -2 AS result, N'trùng email' AS message -- trùng email
	ELSE IF EXISTS (SELECT * FROM Users WHERE Phone = @phone)
		SELECT -3 AS result, N'trùng số điện thoại' AS message -- trùng phone
	ELSE
		BEGIN
			INSERT dbo.Users
			        ( Name ,
			          Email ,
			          Phone ,
			          Address ,
			          Username ,
			          Password ,
			          Avatar ,
			          RoleId ,
			          Lock
			        )
			VALUES  ( @name , -- Name - nvarchar(50)
			          @email , -- Email - nvarchar(50)
			          @phone , -- Phone - varchar(15)
			          @address , -- Address - nvarchar(100)
			          @username , -- Username - nvarchar(30)
			          @password , -- Password - nvarchar(30)
			          NULL , -- Avatar - nvarchar(500)
			          1 , -- RoleId - int
			          0  -- Lock - bit
			        )
			INSERT dbo.Carts
			        ( UserId )
			VALUES  ( (SELECT TOP(1) Id FROM dbo.Users ORDER BY Id DESC)  -- UserId - int
			          )
			SELECT 1 AS result, N'Đăng ký thành công' AS message --đăng ký thành công
		END
END


GO
/****** Object:  StoredProcedure [dbo].[sp_accept_order]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_accept_order]
@Id INT
as
begin
	update Orders set StatusId = 2 where Id = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_add_new_product]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_add_new_product]
@ProGroupId int,@Stock int,@Name nvarchar(100),@Price float,@Discount float,@Size nvarchar(20),@Color nvarchar(20),
@Image1 nvarchar(500),@Image2 nvarchar(500),@Image3 nvarchar(500),@Description nvarchar(100),@Information nvarchar(500)
as
begin
	insert into Products(ProGroupId,Stock,Name,Price,Discount,Size,Color,Image1,Image2,Image3,Display,[Description],Information)
	values(@ProGroupId,@Stock,@Name,@Price,@Discount,@Size,@Color,@Image1,@Image2,@Image3,1,@Description,@Information)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_orders]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_get_all_orders]
as
begin
	select * from Orders
end

GO
/****** Object:  StoredProcedure [dbo].[sp_get_detail_of_an_order]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[sp_get_detail_of_an_order]
@Id INT
as
begin
	select * from OderItems where OrderId = @Id
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_item_of_an_order]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_item_of_an_order]
@OrderId int
as
begin
select p.*,oi.Quantity from OderItems as oi,Products as p
where oi.ProId = p.Id and oi.OrderId = @OrderId
end
GO
/****** Object:  StoredProcedure [dbo].[sp_get_product_groups]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_get_product_groups]
as
begin
	select Id,Name from ProductGroups
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserInfo]    Script Date: 6/7/2021 11:36:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUserInfo]
	@userID INT,
	@name NVARCHAR(50),
	@email NVARCHAR(50),
	@phone VARCHAR(10),
	@address NVARCHAR(100),
	@avatar NVARCHAR(500)
AS
BEGIN
	IF EXISTS(SELECT * FROM dbo.Users WHERE Id != @userID AND Email = @email)
		SELECT -1 AS result, N'email đã được sử dụng' AS message -- email đã được sử dụng
	ELSE IF EXISTS(SELECT * FROM dbo.Users WHERE Id != @userID AND Phone = @phone)
		SELECT -2 AS result, N'số điện thoại đã được sử dụng' AS message --số điện thoại đã được sử dụng
	ELSE
		BEGIN
			UPDATE dbo.Users
			SET Name = @name,
				Email = @email,
				Phone = @phone,
				Address = @address,
				Avatar = @avatar
			WHERE Id = @userID

			SELECT 1 AS result, N'thành công' AS message -- thành công
		END
END


GO
USE [master]
GO
ALTER DATABASE [JewelryStoreDB] SET  READ_WRITE 
GO
