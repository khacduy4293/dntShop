Create database dntShop
USE [dntShop]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admins](
	[AdminID] [varchar](10) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Avatar] [varchar](200) NOT NULL,
	[CreatedDate] [date] NULL,
	[IsStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdminID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brands](
	[BrandID] [varchar](10) NOT NULL,
	[BrandName] [nvarchar](100) NOT NULL,
	[BrandImages] [nvarchar](max) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[IsStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[BrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [varchar](10) NOT NULL,
	[CategoryName] [nvarchar](100) NOT NULL,
	[CategoryImage] [varchar](max) NOT NULL,
	[IsStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [varchar](10) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Gender] [bit] NULL,
	[Phone] [varchar](20) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [varchar](200) NOT NULL,
	[CreatedDate] [date] NULL,
	[IsStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [varchar](10) NOT NULL,
	[CustomerID] [varchar](10) NOT NULL,
	[Total] [int] NOT NULL,
	[ShipName] [nvarchar](100) NOT NULL,
	[ShipPhone] [varchar](20) NOT NULL,
	[ShipAddress] [nvarchar](200) NOT NULL,
	[ShipDate] [date] NOT NULL,
	[ShipNote] [nvarchar](max) NULL,
	[OrderDate] [date] NULL,
	[PaymentMethod] [nvarchar](100) NOT NULL,
	[ProcessStatus] [nvarchar](50) NOT NULL,
	[IsStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdersDetails]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdersDetails](
	[OdID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [varchar](10) NOT NULL,
	[ProductID] [varchar](10) NOT NULL,
	[SellingPrice] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [varchar](10) NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Price] [int] NOT NULL,
	[DiscountProduct] [int] NOT NULL,
	[CategoryID] [varchar](10) NOT NULL,
	[BrandID] [varchar](10) NOT NULL,
	[Descriptions] [nvarchar](max) NULL,
	[Feature] [nvarchar](100) NULL,
	[Image1] [varchar](max) NULL,
	[Image2] [varchar](max) NULL,
	[Image3] [varchar](max) NULL,
	[Image4] [varchar](max) NULL,
	[IsStatus] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductsDetails]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductsDetails](
	[ProductDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [varchar](10) NOT NULL,
	[CPU] [nvarchar](200) NULL,
	[Memory] [nvarchar](200) NULL,
	[VGA] [nvarchar](200) NULL,
	[HDD] [nvarchar](200) NULL,
	[Camera] [nvarchar](200) NULL,
	[Display] [nvarchar](300) NULL,
	[Battery] [nvarchar](100) NULL,
	[Weights] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ratings](
	[RatingID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [varchar](10) NOT NULL,
	[CustomerID] [varchar](10) NOT NULL,
	[Rate] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[RatingDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[RatingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Wishlist]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Wishlist](
	[WishlistID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [varchar](10) NOT NULL,
	[ProductID] [varchar](10) NOT NULL,
	[DateCreated] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[WishlistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[AverageRatings]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[AverageRatings] as
	select ROW_NUMBER() OVER (ORDER BY p.ProductName) AS id, p.ProductID, p.ProductName, AVG(convert(decimal(4,2),r.Rate)) as averageRating, AVG(r.Rate) as star
	from Products p join Ratings r on p.ProductID = r.ProductID
	group by p.ProductName, p.ProductID

GO
/****** Object:  View [dbo].[OrderListThisMonth]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[OrderListThisMonth] as
	SELECT * FROM Orders WHERE MONTH(OrderDate) = datepart(month,getdate())

GO
/****** Object:  View [dbo].[Report]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Report] as
	Select row_number() over (order by a.OrderID) as rowid, a.OrderID, b.ProductID,c.ProductName, a.OrderDate, a.ShipDate,b.SellingPrice, b.Quantity, d.CustomerID, d.FirstName,d.LastName,a.ShipName, a.ProcessStatus,Total=(b.SellingPrice*b.Quantity)      
	from Orders a join OrdersDetails b on a.OrderID = b.OrderID join Products c on b.ProductID=c.ProductID join Customers d on a.CustomerID =d.CustomerID

GO
/****** Object:  View [dbo].[TopRatingThisYear]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create view [dbo].[TopRatingThisYear] as 	
	select TOP 10 p.ProductID, p.ProductName, p.Image1, p.Price, p.DiscountProduct, c.CategoryName,AVG(convert(decimal(4,2),r.Rate)) as averageRating, COUNT(convert(decimal(4,0),r.Rate)) as countRating
	from Products p join Ratings r on p.ProductID = r.ProductID join Categories c on p.CategoryID = c.CategoryID
	WHERE YEAR(r.RatingDate) = datepart(YEAR,getdate())
	group by p.ProductName, p.ProductID,p.Image1,p.Price,p.DiscountProduct,c.CategoryName
	ORDER BY averageRating DESC, countRating DESC

GO
/****** Object:  View [dbo].[TopSellingThisYear]    Script Date: 10/17/2018 12:03:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create view [dbo].[TopSellingThisYear] as 
select TOP 10 p.ProductID, p.ProductName, p.Image1, p.Price, p.DiscountProduct, c.CategoryName, SUM(convert(decimal(4,0),r.Quantity)) as TopSelling
	from Products p join OrdersDetails r on p.ProductID = r.ProductID join Categories c on p.CategoryID = c.CategoryID join Orders o on o.OrderID = r.OrderID
	WHERE YEAR(o.OrderDate) = datepart(YEAR,getdate())
	group by p.ProductName, p.ProductID, p.Image1, p.Price, p.DiscountProduct,c.CategoryName
	ORDER BY TopSelling DESC, p.Price DESC

GO
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD001', N'duy@mail.com', N'123456', N'Tu Khac Duy', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD002', N'thao@mail.com', N'123456', N'Le Phuong Thao', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD003', N'nga@mail.com', N'123456', N'Tran Quynh Nga', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD004', N'tuyet@mail.com', N'123456', N'Nguyen Minh Tuyet', N'images/Avatars/default-avatar5.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD005', N'ngan@mail.com', N'123456', N'Tran Le Ngan', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD006', N'thang@mail.com', N'123456', N'Nguyen Quoc Thang', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD007', N'tuan@mail.com', N'123456', N'Tran Quoc Tuan', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Admins] ([AdminID], [Email], [Password], [FullName], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'AD008', N'nam@mail.com', N'123456', N'Nguyen Hoang Nam', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR001', N'Dell', N'images/Brands/1.png', N'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.', 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR002', N'HP', N'images/Brands/2.png', NULL, 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR003', N'Asus', N'images/Brands/3.png', N'ASUS is a Taiwan-based, multinational computer hardware and consumer electronics company that was established in 1989. Dedicated to creating products for today’s and tomorrow’s smart life, ASUS is the world’s No. 1 motherboard and gaming brand as well as a top-three consumer notebook vendor.', 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR004', N'Apple', N'images/Brands/4.png', NULL, 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR005', N'Samsung', N'images/Brands/5.png', NULL, 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR006', N'MSI', N'images/Brands/6.png', NULL, 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR007', N'Lenovo', N'images/Brands/7.png', NULL, 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR008', N'Huawei', N'images/Brands/8.png', NULL, 1)
INSERT [dbo].[Brands] ([BrandID], [BrandName], [BrandImages], [Descriptions], [IsStatus]) VALUES (N'BR009', N'Oppo', N'images/Brands/9.png', NULL, 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage], [IsStatus]) VALUES (N'CA001', N'Laptops', N'images/Categories/shop01.png', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage], [IsStatus]) VALUES (N'CA002', N'Smartphones', N'images/Categories/shop02.png', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage], [IsStatus]) VALUES (N'CA003', N'Cameras', N'images/Categories/shop03.png', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage], [IsStatus]) VALUES (N'CA004', N'Accessories', N'images/Categories/shop04.png', 1)
INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [CategoryImage], [IsStatus]) VALUES (N'CA005', N'Tablets', N'images/Categories/Tablet.png', 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS001', N'thang@mail.com', N'123456', N'Thang', N'Nguyen', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS002', N'duy@mail.com', N'123456', N'Duy', N'Khac', 1, N'(096) 737-7896', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS003', N'khacduy4293@gmail.com', N'123456', N'Duy', N'Welcker', 1, N'(012) 345-6876', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS004', N'nguyenhoangnam3397@gmail.com', N'123456', N'Nam', N'Nguyen Hoang', 1, N'(096) 737-3210', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS005', N'syed@mail.com', N'123456', N'Syed', N'Abbas', 1, N'(096) 737-3232', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS006', N'tuan@mail.com', N'123456', N'Tuan', N'Tran', 1, N'(096) 737-4444', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS007', N'nam@mail.com', N'123456', N'Nam', N'Nguyen', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS008', N'ronald@mail.com', N'123456', N'Ronald', N'Adina', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS009', N'samuel@mail.com', N'123456', N'Samuel', N'Agcaoili', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS010', N'james@mail.com', N'123456', N'James', N'Aguilar', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS011', N'gail@mail.com', N'123456', N'Gail', N'Erickson', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS012', N'janice@mail.com', N'123456', N'Janice', N'Galvin', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS013', N'jill@mail.com', N'123456', N'Jill', N'Williams', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar5.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS014', N'catherine@mail.com', N'123456', N'Catherine', N'Abel', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS015', N'kim@mail.com', N'123456', N'Kim', N'Abercrombie', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS016', N'frances@mail.com', N'123456', N'Frances', N'Adams', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar5.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS017', N'margaret@mail.com', N'123456', N'Margaret', N'Smith', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS018', N'carla@mail.com', N'123456', N'Carla', N'Adams', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS019', N'kimitry@mail.com', N'123456', N'Kim', N'Akers', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS020', N'lili@mail.com', N'123456', N'Lili', N'Alameda', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar5.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS021', N'TwannaEvans@mail.com', N'123456', N'Twanna', N'Evans', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS022', N'AnnEvans@mail.com', N'123456', N'Ann', N'Evans', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS023', N'JohnEvans@mail.com', N'123456', N'John', N'Evans', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS024', N'MarcFaeber@mail.com', N'123456', N'Marc', N'Faeber', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS025', N'FadiFakhouri@mail.com', N'123456', N'Fadi', N'Fakhouri', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS026', N'CarolynFarino@mail.com', N'123456', N'Carolyn', N'Farino', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS027', N'GeriFarrell@mail.com', N'123456', N'Geri', N'Farrell', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS028', N'HanyingFeng@mail.com', N'123456', N'Hanying', N'Feng', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS029', N'RhodaFinley@mail.com', N'123456', N'Rhoda', N'Finley', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS030', N'DuaneFitzgerald@mail.com', N'123456', N'Duane', N'Fitzgerald', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS031', N'JamesFine@mail.com', N'123456', N'James', N'Fine', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS032', N'KathieFlood@mail.com', N'123456', N'Kathie', N'Flood', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS033', N'JayFluegel@mail.com', N'123456', N'Jay', N'Fluegel', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS034', N'KellyFocht@mail.com', N'123456', N'Kelly', N'Focht', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS035', N'JeffreyFord@mail.com', N'123456', N'Jeffrey', N'Ford', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS036', N'GarthFort@mail.com', N'123456', N'Garth', N'Fort', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS037', N'DorothyFox@mail.com', N'123456', N'Dorothy', N'Fox', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar4.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS038', N'JudithFrazier@mail.com', N'123456', N'Judith', N'Frazier', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS039', N'JohnFredericksen@mail.com', N'123456', N'John', N'Fredericksen', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS040', N'SusanFrench@mail.com', N'123456', N'Susan', N'French', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar5.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS041', N'LiamFriedland@mail.com', N'123456', N'Liam', N'Friedland', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS042', N'MihailFrintu@mail.com', N'123456', N'Mihail', N'Frintu', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS043', N'JohnFord@mail.com', N'123456', N'John', N'Ford', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS044', N'PaulFulton@mail.com', N'123456', N'Paul', N'Fulton', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS045', N'DonFunk@mail.com', N'123456', N'Don', N'Funk', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS046', N'BobGage@mail.com', N'123456', N'Bob', N'Gage', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS047', N'AldeenGallagher@mail.com', N'123456', N'Aldeen', N'Gallagher', 0, N'(012) 234-6879', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar3.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS048', N'MichaelGalos@mail.com', N'123456', N'Michael', N'Galos', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar2.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS049', N'JonGanio@mail.com', N'123456', N'Jon', N'Ganio', 1, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar1.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Customers] ([CustomerID], [Email], [Password], [FirstName], [LastName], [Gender], [Phone], [Address], [Avatar], [CreatedDate], [IsStatus]) VALUES (N'CS050', N'KathleenGarza@mail.com', N'123456', N'Kathleen', N'Garza', 0, N'(096) 737-4508', N'590 CMT8, Q3, HCM', N'images/Avatars/default-avatar5.jpg', CAST(0xD73E0B00 AS Date), 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000001', N'CS003', 3026, N'Duy Welcker', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000002', N'CS004', 305, N'Nam Nguyen Hoang', N'(096) 737-3210', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000003', N'CS005', 266, N'Syed Abbas', N'(096) 737-3232', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000004', N'CS005', 140, N'Syed Abbas', N'(096) 737-3232', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000005', N'CS006', 800, N'Tuan Tran', N'(096) 737-4444', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Canceled', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000006', N'CS015', 892, N'Kim Abercrombie', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000007', N'CS016', 70, N'Frances Adams', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000008', N'CS017', 140, N'Margaret Smith', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000009', N'CS017', 85, N'Margaret Smith', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Canceled', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000010', N'CS021', 2550, N'Twanna Evans', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000011', N'CS023', 725, N'John Evans', N'(096) 737-4508', N'158 Le Lai, Quan 1, HO Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000012', N'CS027', 1155, N'Geri Farrell', N'(096) 737-4508', N'1 Pham Van Dong, Quan Phu Nhuan, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000013', N'CS001', 670, N'Thang Nguyen', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000014', N'CS019', 1472, N'Kim Akers', N'(096) 737-4508', N'133 Dinh Bo Linh, Phuong 25, Quan Binh Thanh, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Canceled', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000015', N'CS026', 195, N'Carolyn Farino', N'(012) 456-9875', N'128 Pham Ngu Lao, Quan 1, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000016', N'CS036', 535, N'Hieu Nguyen', N'(078) 956-4156', N'22 Nguyen Thi Minh Khai, Quan 1, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000017', N'CS044', 6000, N'Paul Fulton', N'(098) 564-1233', N'774 Hoang Van Thu, Quan Phu Nhuan, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Completed', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000018', N'CS047', 1125, N'Aldeen Gallagher', N'(012) 345-6987', N'888 Cach Mang Thang 8, Quan 3, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000019', N'CS008', 1550, N'Ronald Adina', N'(079) 564-2566', N'246 Tran Phu, Quan 5, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Pending', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000020', N'CS002', 1100, N'Duy Khac', N'(096) 737-7896', N'228 Truong Chinh, Tan Binh, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Canceled', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000021', N'CS003', 712, N'Duy Welcker', N'(096) 737-4508', N'590 CMT8, Q3, HCM', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Canceled', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000022', N'CS012', 12500, N'Janice Galvin', N'(096) 737-4508', N'456 Nguyen Hue, Quan 1, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Shipping', 1)
INSERT [dbo].[Orders] ([OrderID], [CustomerID], [Total], [ShipName], [ShipPhone], [ShipAddress], [ShipDate], [ShipNote], [OrderDate], [PaymentMethod], [ProcessStatus], [IsStatus]) VALUES (N'OD0000023', N'CS020', 826, N'Lili Alameda', N'(096) 737-4508', N'122 Nguyen Thi Minh Khai, Quan 3, Ho Chi Minh', CAST(0xD73E0B00 AS Date), N'', CAST(0xD73E0B00 AS Date), N'Cash On Delivery', N'Pending', 1)
SET IDENTITY_INSERT [dbo].[OrdersDetails] ON 

INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (1, N'OD0000001', N'PR098', 826, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (2, N'OD0000001', N'PR097', 2200, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (3, N'OD0000002', N'PR094', 65, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (4, N'OD0000002', N'PR095', 240, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (5, N'OD0000003', N'PR012', 266, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (6, N'OD0000004', N'PR092', 140, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (7, N'OD0000005', N'PR054', 800, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (8, N'OD0000006', N'PR090', 535, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (9, N'OD0000006', N'PR092', 140, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (10, N'OD0000006', N'PR091', 52, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (11, N'OD0000006', N'PR093', 165, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (12, N'OD0000007', N'PR082', 30, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (13, N'OD0000007', N'PR081', 40, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (14, N'OD0000008', N'PR092', 140, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (15, N'OD0000009', N'PR079', 85, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (16, N'OD0000010', N'PR067', 2550, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (17, N'OD0000011', N'PR033', 725, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (18, N'OD0000012', N'PR074', 990, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (19, N'OD0000012', N'PR093', 165, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (20, N'OD0000013', N'PR044', 670, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (21, N'OD0000014', N'PR068', 1472, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (22, N'OD0000015', N'PR009', 195, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (23, N'OD0000016', N'PR090', 535, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (24, N'OD0000017', N'PR018', 1200, 5, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (25, N'OD0000018', N'PR073', 475, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (26, N'OD0000018', N'PR076', 650, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (27, N'OD0000019', N'PR064', 1550, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (28, N'OD0000020', N'PR023', 1100, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (29, N'OD0000021', N'PR021', 712, 1, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (30, N'OD0000022', N'PR022', 1250, 10, 1)
INSERT [dbo].[OrdersDetails] ([OdID], [OrderID], [ProductID], [SellingPrice], [Quantity], [IsStatus]) VALUES (31, N'OD0000023', N'PR098', 826, 1, 1)
SET IDENTITY_INSERT [dbo].[OrdersDetails] OFF
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR001', N'iPad Pro 12.9 WI-FI 4G', 1350, 5, N'CA005', N'BR004', N'iPad Pro 12.9 WI-FI 4G 256GB (2017)', N'--', N'P001-1.jpg', N'P001-2.jpg', N'P001-3.jpg', N'P001-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR002', N'iPad Pro 10.5 WI-FI', 990, 0, N'CA005', N'BR004', N'iPad Pro 10.5 WI-FI 4G 256GB (2017)', N'--', N'P002-1.jpg', N'P002-2.jpg', N'P002-3.jpg', N'P002-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR003', N'iPad 2018 WiFi+4G 32GB', 530, 0, N'CA005', N'BR004', N'iPad 2018 WiFi+4G 32GB', N'--', N'P003-1.jpg', N'P003-2.jpg', N'P003-3.jpg', N'P003-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR004', N'iPad 2018 WiFi 32GB', 450, 0, N'CA005', N'BR004', N'iPad 2018 WiFi 32GB', N'--', N'P004-1.png', N'P004-2.png', N'P004-3.png', N'P004-4.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR005', N'Samsung Galaxy Tab E', 220, 0, N'CA005', N'BR005', N'Samsung Galaxy Tab E', N'--', N'P005-1.jpg', N'P005-2.jpg', N'P005-3.jpg', N'P005-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR006', N'Samsung Galaxy Tab A6', 375, 0, N'CA005', N'BR005', N'Samsung Galaxy Tab A6 10.1 (2016) - Spen', N'--', N'P006-1.jpg', N'P006-2.jpg', N'P006-3.jpg', N'P006-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR007', N'Samsung Galaxy Tab A', 500, 10, N'CA005', N'BR005', N'Samsung Galaxy Tab A 10.5 ', N'--', N'P007-1.jpg', N'P007-2.jpg', N'P007-3.jpg', N'P007-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR008', N'Samsung Galaxy Tab S4', 890, 0, N'CA005', N'BR005', N'iPad Pro 12.9 WI-FI 4G 256GB (2017)', N'--', N'P008-1.jpg', N'P008-2.jpg', N'P008-3.jpg', N'P008-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR009', N'Lenovo Phab 2 Plus', 195, 0, N'CA005', N'BR007', N'Lenovo Phab 2 Plus 3GB 6.4 inch, FHD', N'--', N'P009-1.jpg', N'P009-2.jpg', N'P009-3.jpg', N'P009-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR010', N'Lenovo Phab 2 Pro', 380, 10, N'CA005', N'BR007', N'Lenovo Phab 2 Pro 4GB 6.4 inch, QHD', N'--', N'P010-1.jpg', N'P010-2.jpg', N'P010-3.jpg', N'P010-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR011', N'Lenovo Yoga Book', 645, 15, N'CA005', N'BR007', N'Lenovo Yoga Book Windows Black', N'--', N'P011-1.jpg', N'P011-2.jpg', N'P011-3.jpg', N'P011-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR012', N'Huawei MediaPad M3', 280, 5, N'CA005', N'BR008', N'Huawei MediaPad M3 8.0', N'--', N'P012-1.jpg', N'P012-2.jpg', N'P012-3.jpg', N'P012-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR013', N'SamSung Galaxy A8', 400, 10, N'CA002', N'BR005', N'Samsung Galaxy A8 (2018) 5.6inch 4GB RAM', N'--', N'A8-1.jpg', N'A8-2.jpg', N'A8-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR014', N'Samsung Galaxy A8 Plus', 600, 10, N'CA002', N'BR005', N'Samsung Galaxy A8 Plus 6.2inch 4GB RAM', N'--', N'A8pls-1.jpg', N'A8pls-2.jpg', N'A8pls-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR015', N'iPhone 6s 32GB', 350, 5, N'CA002', N'BR004', N'iPhone 6s 32GB Apple A8, 2 CPU, 1GB RAM', N'--', N'iPhone6s-1.jpg', N'iPhone6s-2.jpg', N'iPhone6s-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR016', N'iPhone 7 Plus 32GB', 450, 5, N'CA002', N'BR004', N'iPhone 7 Plus 32GB Apple A10, 4 CPU, 3GB RAM', N'--', N'iPhone7Plus-1.jpg', N'iPhone7Plus-2.jpg', N'iPhone7Plus-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR017', N'iPhone 8 64GB', 800, 0, N'CA002', N'BR004', N'iPhone 8 64GB Apple A11 Bionic, 2GB RAM,	12.0 MP Camera', N'--', N'iPhone8Plus-1.png', N'iPhone8Plus-2.png', N'iPhone8Plus-3.png', N'iPhone8Plus-4.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR018', N'iPhone X 64GB', 1200, 0, N'CA002', N'BR004', N'iPhone X 64GB Apple A11 Bionic, 3GB RAM, Dual 12.0 MP Camera', N'Hot', N'iPhoneX64GB-1.jpg', N'iPhoneX64GB-2.jpg', N'iPhoneX64GB-3.jpg', N'iPhoneX64GB-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR019', N'Samsung Galaxy S7', 100, 15, N'CA002', N'BR005', N'Samsung Galaxy S7 4GB RAM, 32GB ROM', N'--', N'S6-1.jpg', N'S6-2.jpg', N'S6-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR020', N'Samsung Galaxy S9', 1000, 0, N'CA002', N'BR005', N'Samsung Galaxy S9 4GB RAM, 64GB ROM Android 8.0', N'Hot', N'SamsungGalaxyS9-1.jpg', N'SamsungGalaxyS9-2.jpg', N'SamsungGalaxyS9-3.png', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR021', N'Samsung Galaxy S8', 750, 5, N'CA002', N'BR005', N'Samsung Galaxy S8 4GB RAM, 64GB ROM Android 7.0', N'--', N'SS8-1.jpg', N'SS8-2.jpg', N'SS8-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR022', N'Samsung Galaxy S9 Lilac Purple', 1250, 0, N'CA002', N'BR005', N'Samsung Galaxy S9 Lilac Purple 4GB RAM, 128GB ROM, Android 8.0', N'New', N'SS9LilacPurple-1.jpg', N'SS9LilacPurple-2.jpg', N'SS9LilacPurple-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR023', N'MSI GL72M 7REX - 1427XVN', 1100, 0, N'CA001', N'BR006', N'MSI GL72M 7REX - 1427XVN 17.3 inch 16GB', N'--', N'MSI-1.jpg', N'MSI-2.jpg', N'MSI-3.jpg', N'MSI -4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR024', N'Lenovo Thinkpad', 1100, 0, N'CA001', N'BR007', N'Lenovo Thinkpad I5 7200U 4GB, FHD', N'--', N'LenovoThinkpad-1.jpg', N'LenovoThinkpad-2.jpg', N'LenovoThinkpad-3.jpg', N'LenovoThinkpad-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR025', N'Lenovo Gaming Y580', 1220, 0, N'CA001', N'BR007', N'Lenovo Gaming Y580 i7 7700HQ 8GB DDR4 SSD128GB', N'--', N'Lenovo-1.png', N'Lenovo-2.png', N'Lenovo-3.png', N'Lenovo-4.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR026', N'Lenovo Ideapad', 300, 0, N'CA001', N'BR007', N'Lenovo Ideapad Intel, Pentium 4GB, HD', N'--', N'LenovoIdeapad-1.jpg', N'LenovoIdeapad-2.jpg', N'LenovoIdeapad-3.jpg', N'LenovoIdeapad-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR027', N'Lenovo Legion Y520', 1300, 0, N'CA001', N'BR007', N'Lenovo Legion Y520 i7 7700HQ 8GB DDR4 SSD128GB', N'--', N'lnvLegion.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR028', N'Lenovo IdeaPad 320', 650, 0, N'CA001', N'BR007', N'Lenovo IdeaPad 320 I5 7200U 4GB, FHD', N'--', N'lnvIdeaPad320.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR029', N'Lenovo IdeaPad 330', 725, 0, N'CA001', N'BR007', N'Lenovo IdeaPad 330 I5 8250U 8GB, FHD', N'--', N'lnvIdeaPad330.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR030', N'Lenovo Yoga 520', 680, 0, N'CA001', N'BR007', N'Lenovo Thinkpad I4 7100U 4GB, HD', N'--', N'lnvYoga520.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR031', N'Lenovo IdeaPad 330s', 550, 0, N'CA001', N'BR007', N'Lenovo IdeaPad 330s I5 8250U 8GB HDD+1TB, FHD', N'New', N'lnvIdeaPad330s.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR032', N'Lenovo IdeaPad 130', 450, 0, N'CA001', N'BR007', N'Lenovo IdeaPad 130 I3 7100U 4GB, FHD', N'--', N'lnvIdeaPad130.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR033', N'Dell Vostro 5471', 725, 0, N'CA001', N'BR001', N'Dell Vostro 5471 I5 8250U 4GB, HD', N'--', N'DellVostro1.png', N'DellVostro2.png', N'DellVostro3.png', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR034', N'Dell Inspiron 5570', 720, 0, N'CA001', N'BR001', N'Dell Inspiron 5570 15.6inch 4GB, HD', N'--', N'Dell5570A-1.png', N'Dell5570A-2.png', N'Dell5570A-3.png', N'Dell5570A-4.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR035', N'Dell Inspiron 7370', 975, 0, N'CA001', N'BR001', N'Dell Ins 7370 15.6inch 4GB, HD', N'Hot', N'Dell7370-1.png', N'Dell7370-2.png', N'Dell7370-3.png', N'Dell7370-4.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR036', N'Dell Inspiron 7570', 1350, 0, N'CA001', N'BR001', N'Dell Ins 7570 i5-8250u 15.6inch 4GB, FHD', N'New', N'Dell7570.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR037', N'Dell Inspiron 7373', 1350, 0, N'CA001', N'BR001', N'Dell Ins 7373 15.6inch 4GB, HD', N'Hot', N'Dell7373.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR038', N'Dell Inspiron 5379', 1250, 0, N'CA001', N'BR001', N'Dell Ins 5379 15.6inch 4GB, HD', N'Hot', N'Dell5379.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR039', N'Dell Inspiron 3578', 1000, 0, N'CA001', N'BR001', N'Dell Ins 3578 15.6inch 4GB, HD', N'--', N'Dell3578.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR040', N'Dell Vostro 5568', 800, 0, N'CA001', N'BR001', N'Dell Vostro 5568 i5-7200u 15.6inch 4GB, HD', N'--', N'DellVostro5568.png', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR041', N'Dell Inspiron 3576', 650, 0, N'CA001', N'BR001', N'Dell Ins 3576 i5-7200u 15.6inch 4GB, HD', N'--', N'L001-1.png', N'Dell3576.png', N'L001-2.png', N'L001-3.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR042', N'Dell Inspiron 3567', 600, 0, N'CA001', N'BR001', N'Dell Ins 3567 i3-7100u 15.6inch 4GB, HD', N'--', N'L001-1.png', N'Dell3567.png', N'L001-2.png', N'L001-3.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR043', N'Dell Inspiron 3476', 600, 0, N'CA001', N'BR001', N'Dell Ins 3476 i3-7100u 15.6inch 4GB, HD', N'--', N'Dell3476.png', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR044', N'Dell Vostro 3568', 670, 0, N'CA001', N'BR001', N'Dell Ins 5379 i5-7200u 15.6inch 4GB, HD', N'--', N'DellVostro3568.png', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR045', N'Dell Vostro 3468', 595, 5, N'CA001', N'BR001', N'Dell Ins 5379 Core i3 15.6inch 4GB, HD', N'--', N'DellVostro3468.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR046', N'Dell Vostro 3368', 500, 0, N'CA001', N'BR001', N'Dell Ins 5379 Core i3 15.6inch 4GB, HD', N'--', N'DellVostro-3368.png', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR047', N'Asus ROG GL503GE', 1800, 0, N'CA001', N'BR003', N'Asus ROG GL503GE Corei7 8GB DDR4 SSD128GB, FHD', N'Hot', N'AsusROG.png', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR048', N'Asus Vivo 406', 485, 0, N'CA001', N'BR003', N'Asus Vivo 406 i3-7100u 14inch 4GB, HD', N'--', N'asvivo406-1.png', N'asvivo406-2.png', N'asvivo406-3.png', N'asvivo406-4.png', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR049', N'Asus x541', 450, 0, N'CA001', N'BR003', N'Asus x541 i3-7100u 15.6inch 4GB, HD', N'--', N'asx541-1.jpg', N'asx541-2.jpg', N'asx541-3.jpg', N'asx541-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR050', N'Asus Zenbook', 1750, 0, N'CA001', N'BR003', N'Asus Zenbook i7-8550u 15.6inch 4GB, FHD', N'--', N'aszenbook.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR051', N'Asus Zenbook 430', 1050, 0, N'CA001', N'BR003', N'Asus Zenbook 430 i5-8250u 14inch 4GB, FHD', N'--', N'aszenbook430.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR052', N'Asus Vivo 410UA', 990, 0, N'CA001', N'BR003', N'Asus Vivo 410UA i7-8550u 14inch 4GB, FHD', N'--', N'asvivo410UAi7.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR053', N'Asus Vivo 510UQ', 850, 0, N'CA001', N'BR003', N'Asus x541 i5-8250u 15.6inch 4GB, FHD', N'--', N'asvivo510UQi5.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR054', N'Asus Vivo 510UAi5', 800, 0, N'CA001', N'BR003', N'Asus x541 i5-7200u 15.6inch 4GB, FHD', N'--', N'asvivo510UAi5.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR055', N'Asus Vivo 410UAi5', 750, 0, N'CA001', N'BR003', N'Asus x541 i5-7200u 14inch 4GB, FHD', N'--', N'asvivo410UAi5.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR056', N'Asus S510Ua-i3', 650, 0, N'CA001', N'BR003', N'Asus S510Ua Corei3 4GB, HD graphics 620, FHD', N'--', N'asS510UAi3.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR057', N'Asus Vivo tp410UAi3', 670, 0, N'CA001', N'BR003', N'Asus Vivo tp410UAi3 i3-7100u 15.6inch 4GB, HD', N'--', N'asvivotp410UAi3.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR058', N'Asus Vivo s410i3', 645, 0, N'CA001', N'BR003', N'Asus Vivo s410i3 i3-7100u 14inch 4GB, HD', N'--', N'asvivos410i3.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR059', N'Macbook Air 13 128GB (2017)', 1800, 0, N'CA001', N'BR004', N'Macbook Air 13 Core i5 13.3inch 8GB, QHD', N'Hot', N'MacBook12-MNYL2ZP-A-1.jpg', N'MacBook12-MNYL2ZP-A-2.jpg', N'MacBook12-MNYL2ZP-A-3.jpg', N'MacBook12-MNYL2ZP-A-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR060', N'Macbook 12 256GB', 2250, 5, N'CA001', N'BR004', N'Macbook 12 256GB Core M3 12inch 8GB', N'--', N'MacBook13MPXV2-1.jpg', N'MacBook13MPXV2-2.jpg', N'MacBook13MPXV2-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR061', N'Macbook Pro 13 128GB', 1450, 0, N'CA001', N'BR004', N'Macbook Pro 13 Core i5 13.3inch 8GB, SSD+128GB', N'--', N'MacBookAirMQD32LL.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR062', N'Macbook Pro 13 256GB', 1850, 0, N'CA001', N'BR004', N'Macbook Pro 13 Core i5 13.3inch 8GB, SSD+256GB', N'Hot', N'MacBook13MPXT2LL.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR063', N'Macbook Pro 15 Touch Bar 512 GB (2018)', 2950, 0, N'CA001', N'BR004', N'Macbook Pro 15 Core i7 15.4inch Retina, 16GB Ram', N'New', N'MacBook15MPTT2-1.png', N'MacBook15MPTT2-2.jpg', N'MacBook15MPTT2-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR064', N'Macbook Air 13 128GB (2018)', 1550, 0, N'CA001', N'BR004', N'Macbook Pro 13 Core i5 13.3inch Retina 8GB, SSD+128GB', N'--', N'MacBook13MPXQ2-2.jpg', N'MacBook13MPXQ2-3.jpg', NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR065', N'Macbook Air 13 256GB (2018)', 1950, 0, N'CA001', N'BR004', N'Macbook Pro 13 Core i5 13.3inch Retina 8GB, SSD+256GB', N'New', N'MacBook13MPXU2-1.jpg', N'MacBook13MPXU2-2.jpg', N'MacBook13MPXU2-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR066', N'Macbook 12 128GB', 1915, 0, N'CA001', N'BR004', N'Macbook 12 128GB Core M3 12inch 8GB', N'--', N'MacBook12MNYN2-1.png', N'MacBook12MNYN2-2.jpg', N'MacBook12MNYN2-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR067', N'Macbook Pro 13 inch 512GB (2018)', 2550, 0, N'CA001', N'BR004', N'Macbook Pro 13 Core i5 13.3inch Retina 8GB, SSD+512GB', N'New', N'MacBook13MPXW2-1.jpg', N'MacBook13MPXW2-2.jpg', N'MacBook13MPXW2-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR068', N'HP Envy 13 ah0025TU', 1550, 5, N'CA001', N'BR002', N'P Envy 13 ah0025TU i7-8550u 15.6inch 4GB, FHD', N'Hot', N'HPEnvy13ah0025TU-1.png', N'HPEnvy13ah0025TU-2.jpg', N'HPEnvy13ah0025TU-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR069', N'HP Pavilion Gaming 15', 1250, 0, N'CA001', N'BR002', N'HP Pavilion Gaming 15 i7-8550u 15.6inch 4GB, FHD', N'New', N'HPPavilionGaming15-cx0179TX-1.jpg', N'HPPavilionGaming15-cx0179TX-2.jpg', N'HPPavilionGaming15-cx0179TX-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR070', N'HP 14-cK0066TU', 350, 0, N'CA001', N'BR002', N'HP 14-cK0066TU i3-7100u 14inch 4GB, HD', N'--', N'HP14-cK0066TU-1.jpg', N'HP14-cK0066TU-2.jpg', N'HP14-cK0066TU-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR071', N'HP Pavilion 14', 750, 0, N'CA001', N'BR002', N'HP Pavilion 14 i5-8250u 14inch 4GB, HD', N'--', N'HPPavilion14-ce0023TU-1.jpg', N'HPPavilion14-ce0023TU-2.jpg', N'HPPavilion14-ce0023TU-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR072', N'HP Envy 13-ah0027TU', 1300, 5, N'CA001', N'BR002', N'HP Envy 13-ah0027TU i7-8550u 13inch 4GB, FHD', N'--', N'HPEnvy13-ah0027TU-1.jpg', N'HPEnvy13-ah0027TU-2.png', N'HPEnvy13-ah0027TU-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR073', N'HP 15-da0051TU', 495, 4, N'CA001', N'BR002', N'HP 15-da0051TU i5-7200u 15.6inch 4GB, FHD', N'--', N'HP15-da0051TU-1.jpg', N'HP15-da0051TU-2.jpg', N'HP15-da0051TU-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR074', N'HP Probook 430G5', 1100, 10, N'CA001', N'BR002', N'HP Probook 430G5 i7-8550u 15.6inch 4GB, FHD', N'--', N'HPProbook430G5-2XR79PA-1.png', N'HPProbook430G5-2XR79PA-2.jpg', N'HPProbook430G5-2XR79PA-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR075', N'HP Pavilion 14', 750, 5, N'CA001', N'BR002', N'HP Pavilion 14 i5-8250u 14inch 4GB, FHD', N'--', N'HPPavilion14-ce0024TU-1.jpg', N'HPPavilion14-ce0024TU-2.jpg', N'HPPavilion14-ce0024TU-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR076', N'HP Pavilion X36014', 650, 0, N'CA001', N'BR002', N'HP Pavilion X36014 i3-8130u 14inch 4GB, FHD', N'--', N'HPPavilionX36014-cd0082TU-1.jpg', N'HPPavilionX36014-cd0082TU-2.jpg', N'HPPavilionX36014-cd0082TU-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR077', N'HP Pavilion15-cc058TX', 925, 10, N'CA001', N'BR002', N'HP Pavilion15-cc058TX i7-8550u 15.6inch 4GB, FHD', N'--', N'HPPavilion15-cc058TX-1.jpg', N'HPPavilion15-cc058TX-2.jpg', N'HPPavilion15-cc058TX-3.jpg', NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR078', N'Asus Cerberus', 50, 0, N'CA004', N'BR003', N'ASUS ROG Cerberus Gaming Accessory Bundle, 2500 DPI', N'--', N'AsusCerberus.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR079', N'Asus Strix Wireless', 85, 0, N'CA004', N'BR003', N'ROG Strix Wireless gaming headset fully compatible with PC and PlayStation 4', N'--', N'AsusStrixWireless.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR080', N'Camera Questek Win QB', 28, 0, N'CA003', N'BR008', N'Thermal Network Bullet Camera ', N'--', N'CameraQuestekWinQB-6111S4.png', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR081', N'Camera Hikvision', 40, 0, N'CA003', N'BR008', N'Thermal Network Bullet Camera', N'--', N'CameraHikvision.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR082', N'Camera KBvision KX', 30, 0, N'CA003', N'BR008', N'Thermal Network Bullet Camera', N'--', N'CameraKBvisionKX.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR083', N'Camera Questek One', 90, 0, N'CA003', N'BR008', N'Thermal Network Bullet Camera', N'--', N'CameraQuestekOne.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR084', N'Huawei MediaPad T3', 280, 5, N'CA005', N'BR008', N'Huawei MediaPad T3 10.0', N'--', N'P013-1.jpg', N'P013-2.jpg', N'P013-3.jpg', N'P013-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR085', N'OPPO Find X', 980, 0, N'CA002', N'BR009', N'OPPO Find X 6.42inch 8GB RAM', N'--', N'P014-1.jpg', N'P014-2.jpg', N'P014-3.jpg', N'P014-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR086', N'Oppo F9 6GB', 480, 0, N'CA002', N'BR009', N'Oppo F9 6GB 6.3inch', N'--', N'P015-1.jpg', N'P015-2.jpg', N'P015-3.jpg', N'P015-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR087', N'OPPO F5', 280, 0, N'CA002', N'BR009', N'OPPO F5 4GB RAM', N'--', N'P016-1.jpg', N'P016-2.jpg', N'P016-3.jpg', N'P016-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR088', N'OPPO F7', 380, 0, N'CA002', N'BR009', N'OPPO F7 6.23inch 4GB RAM', N'--', N'P017-1.jpg', N'P017-2.jpg', N'P017-3.jpg', N'P017-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR089', N'Oppo A71K', 120, 0, N'CA002', N'BR009', N'Oppo A71K 2 GB RAM 5.2inch HD', N'New', N'P014-1.jpg', N'P014-2.jpg', N'P014-3.jpg', N'P014-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR090', N'Huawei Nova 3', 535, 0, N'CA002', N'BR008', N'Huawei Nova 3 6.3 inches, 6GB RAM', N'New', N'P019-1.jpg', N'P019-2.jpg', N'P019-3.jpg', N'P019-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR091', N'MSI GAMING HEADSET DS502', 52, 0, N'CA004', N'BR006', N'MSI Gaming Headset DS502', N'--', N'P020-1.jpg', N'P020-2.jpg', N'P020-3.jpg', N'P020-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR092', N'MSI GAMING CLUTCH GM70 RGB', 140, 0, N'CA004', N'BR006', N'MSI GAMING CLUTCH GM70 RGB, 10,800 DPI', N'--', N'P021-1.jpg', N'P021-2.jpg', N'P021-3.jpg', N'P021-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR093', N'ASUS ROG Strix Flare RGB', 165, 0, N'CA004', N'BR003', N'ASUS ROG Strix Flare RGB ', N'--', N'P022-1.jpg', N'P022-2.jpg', N'P022-3.jpg', N'P022-4.jpg', 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR094', N'SAMSUNG WISENET HCO-E6020RP/AC', 65, 0, N'CA003', N'BR005', N'SAMSUNG WISENET HCO-E6020RP/AC', N'--', N'N001-1.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR095', N'SAMSUNG WISENET HCO-7070RP/AC', 240, 0, N'CA003', N'BR005', N'SAMSUNG WISENET HCO-7070RP/AC', N'--', N'N002-1.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR096', N'SAMSUNG WISENET SCV-6083RP/AC', 270, 0, N'CA003', N'BR005', N'SAMSUNG WISENET SCV-6083RP/AC', N'--', N'N003-1.jpg', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR097', N'iPhone Xs Max 512GB', 2200, 0, N'CA002', N'BR004', N'iPhone Xs Max 512GB', N'New', N'N004-1.png', NULL, NULL, NULL, 1)
INSERT [dbo].[Products] ([ProductID], [ProductName], [Price], [DiscountProduct], [CategoryID], [BrandID], [Descriptions], [Feature], [Image1], [Image2], [Image3], [Image4], [IsStatus]) VALUES (N'PR098', N'Huawei P20 Pro', 870, 5, N'CA002', N'BR008', N'Huawei P20 Pro', N'New', N'P023-1.jpg', N'P023-2.jpg', N'P023-3.jpg', N'P023-4.jpg', 1)
SET IDENTITY_INSERT [dbo].[ProductsDetails] ON 

INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (1, N'PR001', N'Apple A10X Fusion', N'4GB', N'Power VR', N'64GB', N'12.0 MP', N'12.9 inch, 2732 x 2048 pixels', N'Lithium - Polymer 41 W/h', N'677 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (2, N'PR002', N'Apple A10X Fusion', N'4GB', N'Power VR', N'64GB', N'12.0 MP', N'10.5 inch, 1668 x 2224 pixels', N'Lithium - Polymer 30.4 W/h', N'469 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (3, N'PR003', N'A10 Fusion', N'2GB', N'PowerVR Series7XT Plus', N'32GB', N'8.0 MP', N'9.7 inches, 1536 x 2048 pixels', N'Li-Ion 32.4 Whs', N'478 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (4, N'PR004', N'A10 Fusion', N'2GB', N'PowerVR Series7XT Plus', N'32GB', N'8.0 MP', N'9.7 inches, 1536 x 2048 pixels', N'Li-Ion 32.4 Whs', N'469 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (5, N'PR005', N'Spreadtrum 4 CPU, 1.3 GHz', N'1.5GB', N'Mali-400', N'8GB', N'5.0MP', N'TFT, 9.6 inch', N'5000 mAh', N'495 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (6, N'PR006', N'Exynos 7870', N'3GB', N'Mali-T830', N'16GB', N'8.0MP', N'10.1 inch, 1920 x 1200 pixels', N'7300 mAh', N'560 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (7, N'PR007', N'4 CPU', N'1.5GB', N'Mali-400', N'8GB', N'5MP', N'7 inch, 1280 x 800 Pixels', N'4000 mAh', N'289g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (8, N'PR008', N'Qualcomm MSM 8998', N'4GB', N'Adreno 540', N'64GB', N'8MP & 13MP', N'10.5 inchs, 2560 x 1600 pixels', N'Li-Po 7300mAh', N'482 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (9, N'PR009', N'Mediatek MT8783', N'3GB', N'Mali-T720 MP2', N'32GB', N'Duel camera 13 MP', N'6.4 inch, 1920 x 1080 pixels', N'4050 mAh', N'218 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (10, N'PR010', N'Qualcomm Snapdragon 652, 4 CPU 1.8 Ghz và 4 CPU 1.4 Ghz', N'4GB', N'Adreno 510', N'64GB', N'16MP', N'IPS LCD, 6.4inch', N'4000 mAh', N'259 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (11, N'PR011', N'Intel Atom x5-Z8550 Processor', N'4GB LPDDR3', N'Onboard', N'1 TB SATA3 + SSD M.2 PCIe', N'8MP', N'10.1 inch, 1920 x 1080 pixels', N'8500 mAh', N'690 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (12, N'PR012', N'Qualcomm Snapdragon 435', N'3GB', N'Adreno 505', N'32GB', N'8.0 MP', N'8.0 inch, 1920 x 1200 pixels', N'4800mAh', N'310g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (13, N'PR013', N'Exynos 7885 Octa, Dual 2.2 + Hexa 1.6, 8 CPU 1.6 GHz', N'4GB', N'Mali G71', N'32GB', N'16MP', N'5.6 inch, 1080 x 2220 pixels', N'3000 mAh', N'172 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (14, N'PR014', N'Exynos 7885 Octa, Dual 2.2 + Hexa 1.6, 8 CPU 1.6 GHz', N'6GB', N'Mali G71', N'64GB', N'16MP', N'6.0 inch, 1080 x 2220 pixels', N'3500 mAh', N'191 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (15, N'PR015', N'Apple A9 2CPU 64bit', N'2GB', N'PowerVR GT7600', N'32GB', N'12MP', N'LED-backlit IPS LCD, 4.7inch, Retina HD', N'1715mAh', N'143 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (16, N'PR016', N'Apple A10 Fusion 4 CPU 64-bit', N'3GB', N'PowerVR GT8500', N'32GB', N'Duel camera 12MP', N'LED-backlit IPS LCD, 5.5inch, Retina HD', N'2900mAh', N'188g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (17, N'PR017', N'Apple A11 Bionic 6 CPU', N'2GB', N'Apple GPU 3 CPU', N'64GB', N'2MP', N'LED-backlit IPS LCD, 4.7", Retina HD', N'1821 mAh', N'148g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (18, N'PR018', N'Apple A11 Bionic 6 CPU', N'3GB', N'Apple GPU 3 CPU', N'64GB', N'Duel camera 12MP', N'OLED, 5.8", Super Retina', N'2700 mAh, Quick change', N'174 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (19, N'PR019', N'Exynos 8890 8CPU 64bit', N'4GB', N'Mali-T880 MP12', N'32GB', N'12MP', N'Super AMOLED, 5.1 inch, Quad HD (2K)', N'3000mAh', N'152 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (20, N'PR020', N'Exynos 9810 8CPU 64bit', N'6GB', N'Mali-G72 MP18', N'64GB', N'Duel camera 12MP', N'6.2", 2K (1440 x 2960 Pixels)', N'3500 mAh', N'174 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (21, N'PR021', N'Exynos 8895 8CPU 64bit', N'4GB', N'Mali-G71', N'64GB', N'12MP', N'2K+ (1440 x 2960 Pixels)', N'3000 mAh', N'155 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (22, N'PR022', N'Exynos 9810 8CPU 64bit', N'6GB', N'Mali-G72 MP18', N'128GB', N'Duel camera 12MP', N'6.2", 2K (1440 x 2960 Pixels)', N'3500mAh', N'189g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (23, N'PR023', N'Core i7-7700HQ 2.80Ghz', N'16GB DDR4 Bus 2400Mhz', N'GeForce GTX 1050 Ti 4GB', N'1 TB SATA3', N'2MP', N'17.3 inch, 1920*1080', N'6-Cell , 41 Whr', N'2.7 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (24, N'PR024', N'Core i5-8250U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'1 TB SATA3', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3-Cell , 41 Whr', N'2.0 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (25, N'PR025', N'Core i7-7700HQ 2.80Ghz', N'8GB DDR4 Bus 2400Mhz', N'GeForce GTX 1050', N'1 TB SATA3 + SSD 128GB', N'2MP', N'15.6 inch backlit FHD(1920x1080)', N'6 Cells 41Whrs', N'2.3 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (26, N'PR026', N'Intel, Pentium', N'4GB DDR3L 1600Mhz', N'Intel HD Graphics', N'500 GB SATA3', N'1MP', N'14 inch backlit HD(1366x768)', N'3 Cells 38Whrs', N'2.0 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (27, N'PR027', N'Core i7-7700HQ 2.80Ghz', N'8GB DDR4 Bus 2400Mhz', N'GeForce GTX 1050 4GB', N'1 TB SATA3 + SSD 128GB', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'6 Cells 42Whrs', N'2.4 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (28, N'PR028', N'Core i5-7200U 2.50Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'1 TB SATA3', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 38Whrs', N'1.9 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (29, N'PR029', N'Core i5-8250U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'1 TB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 38Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (30, N'PR030', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'1 TB SATA3', N'2MP', N'14 inch backlit HD(1366x768) IPS', N'3 Cells 52.5Whrs', N'1.78 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (31, N'PR031', N'Core i5-8250U 1.80Ghz', N'8GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'1 TB SATA3', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 48Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (32, N'PR032', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'500 GB SATA3', N'2MP', N'13.3 inch backlit FHD(1920x1080) IPS', N'3 Cells 48Whrs', N'1.6 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (33, N'PR033', N'Core i5-8250U 2.50Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT 920MX', N'500 TB SATA3 + SSD M.2 PCIe', N'1MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 42Whrs', N'1.98 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (34, N'PR034', N'Core i3-8130U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT 930MX', N'1 TB SATA3', N'1MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 48Whrs', N'2.2 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (35, N'PR035', N'Core i5-8250U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'500GB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 42Whrs', N'2.1 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (36, N'PR036', N'Core i5-8250U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Radeon 530', N'500GB SATA3', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 48Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (37, N'PR037', N'Core i5-7200U 2.50Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel HD 620', N'1 TB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 42Whrs', N'2.0 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (38, N'PR038', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'500GB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 48Whrs', N'2.4 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (39, N'PR039', N'Core i3-8130U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620M', N'1 TB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768)', N'3 Cells 42Whrs', N'1.98 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (40, N'PR040', N'Core i5-7200U 2.50Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT940MX', N'1 TB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 42Whrs', N'2.2 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (41, N'PR041', N'Core i5-7200U 2.50Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel HD 620', N'1 TB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 42Whrs', N'2.0 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (42, N'PR042', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel HD 610', N'500 GB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768)', N'3 Cells 42Whrs', N'1.9 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (43, N'PR043', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2133Mhz', N'Radeon 520', N'500 GB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 48Whrs', N'2 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (44, N'PR044', N'Core i3-8130U 2.20Ghz', N'4GB DDR4 Bus 2400Mhz', N'Radeon 530', N'1 TB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 42Whrs', N'1.9 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (45, N'PR045', N'Core i3-8130U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT930MX', N'1 TB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit HD(1366x768) IPS', N'3 Cells 42Whrs', N'2.1 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (46, N'PR046', N'Core i3-8130U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT920MX', N'1 TB SATA3', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 42Whrs', N'1.6 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (47, N'PR047', N'Core i7-7700HQ 2.80Ghz', N'8GB DDR4 Bus 2400Mhz', N'GeForce GTX 1060', N'1 TB SATA3 + SSD 128GB', N'2MP', N'17.3 inch backlit FHD(1920x1080) IPS', N'6 Cells 48Whrs', N'2.6 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (48, N'PR048', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel HD 620', N'1 TB SATA3 ', N'2MP', N'14 inch backlit HD(1366x768)', N'3 Cells 42Whrs', N'1.7 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (49, N'PR049', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'500 GB SATA3 ', N'1MP', N'15.6 inch backlit HD(1366x768)', N'3 Cells 42Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (50, N'PR050', N'Core i7-8550U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT940MX', N'1 TB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 42Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (51, N'PR051', N'Core i5-8250U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'500GB SATA3', N'2MP', N'14 inch backlit FHD(1920x1080) IPS', N'3 Cells 38Whrs', N'1.7 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (52, N'PR052', N'Core i7-8550U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT920MX', N'1 TB SATA3', N'2MP', N'14 inch backlit FHD(1920x1080) IPS', N'3 Cells 42Whrs', N'1.6 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (53, N'PR053', N'Core i5-8250U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT940MX', N'500 GB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 42Whrs', N'1.9 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (54, N'PR054', N'Core i5-7200U 2.50Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'500 GB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 42Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (55, N'PR055', N'Core i5-7200U 2.50Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'1 TB SATA3', N'2MP', N'14 inch backlit FHD(1920x1080) IPS', N'3 Cells 44Whrs', N'1.6 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (56, N'PR056', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel HD 620', N'500GB SATA3', N'1MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 38Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (57, N'PR057', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'1 TB SATA3', N'2MP', N'15.6 inch backlit HD(1366x768)', N'3 Cells 48Whrs', N'2.0 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (58, N'PR058', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel HD 620', N'500GB SATA3 + SSD M.2 PCIe', N'2MP', N'14 inch backlit HD(1366x768) IPS', N'3 Cells 44Whrs', N'1.9 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (59, N'PR059', N'Intel, Core i5', N'8 GB, LPDDR3 1600Mhz', N'Intel HD Graphics 6000', N'SSD 128GB', N'2MP', N'13.3 inch, 1440 x 900 pixels', N'Lithium-polymers', N'1.35 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (60, N'PR060', N'Intel, Core M3', N'8 GB, LPDDR3 1600Mhz', N'Intel HD Graphics 615', N'SSD 256GB', N'2MP', N'12 inch, 2304 x 1440 Pixels', N'Lithium-polymerss', N'0.92 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (61, N'PR061', N'Intel, Core i5', N'8 GB, LPDDR3', N'Intel Iris Plus Graphics 640', N'SSD 128GB', N'2MP', N'13.3 inch, 2560 x 1600 pixels', N'Lithium-polymerss', N'1.37 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (62, N'PR062', N'Intel, Core i5', N'8 GB, LPDDR3 1600Mhz', N'Intel Iris Plus Graphics 640', N'SSD 256GB', N'2MP', N'13.3 inch, 2560 x 1600 pixels', N'Lithium-polymerss', N'1.39 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (63, N'PR063', N'Intel, Core i7', N'16GB, DDR4', N'Radeon Pro 560X, Intel UHD Graphics 630', N'SSD 512GB', N'2MP', N'15.4 inch, Retina (2880 x 1800 pixels)', N'Lithium-polymerss 83.6Wh', N'1.83 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (64, N'PR064', N'Intel, Core i5', N'8 GB, DDR4', N'Intel HD Graphics 6000', N'SSD 128GB', N'2MP', N'	13.3 inch, 1440 x 900 pixels', N'Lithium-polymer', N'1.35 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (65, N'PR065', N'Intel, Core i5', N'8 GB, DDR4', N'Intel HD Graphics 6000', N'SSD 256GB', N'2MP', N'13.3 inch, 1440 x 900 pixels', N'Lithium-polymer 70.2Wh', N'1.36 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (66, N'PR066', N'Intel, Core M3', N'8 GB, LPDDR3 1600Mhz', N'Intel HD Graphics 615', N'SSD 128GB', N'2MP', N'12 inch, 2304 x 1440 Pixels', N'Lithium-polymers', N'0.93 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (67, N'PR067', N'Intel, Core i5', N'8 GB, DDR4', N'Intel HD Graphics 6000', N'SSD 512GB', N'2MP', N'13.3 inch, 1440 x 900 pixels', N'Lithium-polymer 70.2Wh', N'1.36 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (68, N'PR068', N'Core i7-8550U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT930MX', N'500 GB SATA3', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 44Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (69, N'PR069', N'Core i7-8550U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT950M', N'1 TB SATA3 + SSD M.2 PCIe', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 48Whrs', N'2.0 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (70, N'PR070', N'Core i3-7100U 2.20Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'1 TB SATA3', N'2MP', N'14 inch backlit HD(1366x768)', N'3 Cells 42Whrs', N'1.92 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (71, N'PR071', N'Core i5-8250U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce GT930MX', N'500 GB SATA3', N'1MP', N'14 inch backlit HD(1366x768)', N'3 Cells 44Whrs', N'1.65 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (72, N'PR072', N'Core i7-8550U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 630', N'1 TB SATA3 + SSD M.2 PCIe', N'2MP', N'13 inch backlit FHD(1920x1080)', N'3 Cells 48Whrs', N'1.5 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (73, N'PR073', N'Core i5-7200U 2.50Ghz', N'4GB DDR4 Bus 2133Mhz', N'Intel HD 620', N'500GB SATA3', N'2MP', N'15.6 inch backlit FHD(1920x1080)', N'3 Cells 42Whrs', N'1.9 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (74, N'PR074', N'Core i7-8550U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Geforce MX150', N'1 TB SATA3 + SSD 128GB', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 44Whrs', N'1.8 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (75, N'PR075', N'Core i5-8250U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'1 TB SATA3', N'1MP', N'14 inch backlit FHD(1920x1080) IPS', N'3 Cells 42Whrs', N'1.6 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (76, N'PR076', N'Core i3-8130U 1.60Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'500 GB SATA3', N'2MP', N'14 inch backlit FHD(1920x1080)', N'3 Cells 44Whrs', N'1.68 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (77, N'PR077', N'Core i7-8550U 1.80Ghz', N'4GB DDR4 Bus 2400Mhz', N'Intel UHD 620', N'1 TB SATA3 ', N'2MP', N'15.6 inch backlit FHD(1920x1080) IPS', N'3 Cells 40Whrs', N'2.1 Kg')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (78, N'PR078', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (79, N'PR079', N'', N'', N'', N'', N'', N'', N'', N'350 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (80, N'PR080', N'', N'', N'', N'', N'1.3 MP, LED: 12', N'1280 x 720', N'DC 12V', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (81, N'PR081', N'', N'', N'', N'Support SD/SDHC/SDXC', N'2MP', N'1280 x 720', N'DC 12V', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (82, N'PR082', N'', N'', N'', N'', N'2MP Aptina', N'1920x1080', N'DC 12V', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (83, N'PR083', N'', N'', N'', N'', N'1.0 Megapixel Pixel Plus Korea', N'1280x720', N'DC 5V', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (84, N'PR084', N'Qualcomm MSM8917', N'2GB', N'Adreno 308@ 600 MHz', N'16 GB', N'5 MP and auto focus', N'9.6", 1280 x 800 pixels', N'4,800 mAh', N'460g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (85, N'PR085', N'Qualcomm Snapdragon 845, 8 CPU, 2.8 Ghz', N'8GB', N'Adreno 630', N'256 GB', N'Duel camera 20MP và 16MP', N'6.42 inch, 2340 x 1080 pixels', N'3730 mAh', N'168 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (86, N'PR086', N'MediaTek Helio P60 , 8 CPU, 2.0 Ghz', N'6GB', N'Mali-G72 MP3', N'64GB', N'Duel camera 16 MP và 2 MP', N'6.3 inch, 1080 x 2340 pixels', N'3500mAh', N'158 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (87, N'PR087', N'Mediatek MT6763T Helio P23, 8 CPU, 2.5 Ghz', N'4GB', N'Mali-G71 MP2', N'32GB', N'16 MP and 20 MP', N'6 inch, 1080 x 2160 Pixels', N'3200mAh', N'152 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (88, N'PR088', N'Mediatek Helio P60, 8 CPU, 2.0 Ghz', N'4GB', N'Mali-G72 MP3', N'64GB', N'16MP and 25MP', N'6.23 inch, 1080 x 2280 pixels', N'3400 mAh', N'158 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (89, N'PR089', N'Qualcomm Snapdragon 450, 8 CPU, 1.8 Ghz', N'2GB', N'Adreno 506', N'16GB', N'13 MP and 5MP', N'5.2inch, 720 x 1280 pixels', N'300mAh', N'137 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (90, N'PR090', N'HUAWEI Kirin 970, Octa-core', N'6GB', N'Mali-G72', N'128GB', N'16MP and 24MP', N'6.3 inches, 2340x1080 pixels', N'3750 mAh', N'165 g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (91, N'PR091', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (92, N'PR092', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (93, N'PR093', N'', N'', N'', N'', N'', N'', N'', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (94, N'PR094', N'', N'', N'', N'', N'2.1MP (Auto IR LED on)', N'Full HD (1920 x 1080P)', N'', N'')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (95, N'PR095', N'', N'', N'', N'', N'4.0 Megapixel', N'2560 x 1440', N'Dual (24V AC & 12V DC)', N'914g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (96, N'PR096', N'', N'', N'', N'', N'2.0 Megapixel AHD', N'1920 x 1080', N'Dual (24V AC & 12V DC)', N'716g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (97, N'PR097', N'Apple A12 Bionic', N'4 GB', N'Apple GPU 4CPU', N'512 GB', N'12.0 MP', N'6.5 inchs, 1242 x 2688 Pixels', N'3200 mAh', N'208g')
INSERT [dbo].[ProductsDetails] ([ProductDetailsID], [ProductID], [CPU], [Memory], [VGA], [HDD], [Camera], [Display], [Battery], [Weights]) VALUES (98, N'PR098', N'HUAWEI Kirin 970, Octa-core + i7 co-processor', N'6GB', N'Mali-G72 MP12', N'128GB', N'3 camera (40MP & 20MP & 8MP)', N'6.1 inches, 2240 x 1080 pixels', N'4000 mAh', N'180g')
SET IDENTITY_INSERT [dbo].[ProductsDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (1, N'PR097', N'CS003', 5, N'good', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (2, N'PR098', N'CS003', 5, N'very good', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (3, N'PR095', N'CS004', 1, N'bad', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (4, N'PR094', N'CS004', 3, N'hi', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (5, N'PR012', N'CS005', 4, N'beatiful', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (6, N'PR093', N'CS005', 3, N'nine!', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (7, N'PR054', N'CS006', 2, N'bad', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (8, N'PR096', N'CS006', 5, N'good', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (9, N'PR011', N'CS006', 5, N'nine', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (10, N'PR076', N'CS006', 4, N'very good...', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (11, N'PR089', N'CS015', 4, N'nine', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (12, N'PR082', N'CS016', 5, N'ok', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (13, N'PR081', N'CS016', 4, N'good', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (14, N'PR008', N'CS016', 5, N'verry nine', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (15, N'PR090', N'CS016', 5, N'besst', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (16, N'PR075', N'CS016', 3, N'not bad!!!!', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (17, N'PR098', N'CS016', 3, N'ok', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (18, N'PR092', N'CS017', 4, N'so good', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (19, N'PR077', N'CS017', 3, N'too expensive', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (20, N'PR067', N'CS021', 5, N'that good!!!!', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (21, N'PR084', N'CS023', 2, N'bad', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (22, N'PR098', N'CS023', 4, N'me too', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (23, N'PR088', N'CS023', 5, N'camera very good.!!!!!', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (24, N'PR078', N'CS027', 4, N'not bad', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (25, N'PR074', N'CS027', 4, N'ok ', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (26, N'PR064', N'CS027', 4, N'nine', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (27, N'PR044', N'CS001', 4, N'ok', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (28, N'PR068', N'CS019', 5, N'good....!!!!!', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (29, N'PR020', N'CS019', 5, N'camera very nine', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (30, N'PR025', N'CS026', 2, N'i want to sale product!!!!!!1', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (31, N'PR009', N'CS026', 4, N'nine', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (32, N'PR090', N'CS036', 3, N'that good', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (33, N'PR097', N'CS036', 3, N'not bad', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (34, N'PR097', N'CS044', 3, N'too expensive', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (35, N'PR076', N'CS047', 5, N'me tooo', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (36, N'PR066', N'CS047', 5, N'wow', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (37, N'PR064', N'CS008', 5, N'ok', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (38, N'PR023', N'CS002', 3, N'ok', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (39, N'PR021', N'CS003', 4, N'nine', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (40, N'PR093', N'CS012', 4, N'not bad', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (41, N'PR090', N'CS012', 4, N'me too', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Ratings] ([RatingID], [ProductID], [CustomerID], [Rate], [Content], [RatingDate]) VALUES (42, N'PR090', N'CS020', 2, N'i don''t like', CAST(0xD73E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Ratings] OFF
SET IDENTITY_INSERT [dbo].[Wishlist] ON 

INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (1, N'CS001', N'PR098', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (2, N'CS001', N'PR087', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (3, N'CS001', N'PR088', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (4, N'CS001', N'PR074', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (5, N'CS001', N'PR072', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (6, N'CS001', N'PR060', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (7, N'CS001', N'PR075', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (8, N'CS001', N'PR077', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (9, N'CS001', N'PR057', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (10, N'CS026', N'PR093', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (11, N'CS026', N'PR094', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (12, N'CS002', N'PR063', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (13, N'CS002', N'PR064', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (14, N'CS002', N'PR065', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (15, N'CS002', N'PR028', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (16, N'CS002', N'PR029', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (17, N'CS002', N'PR030', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (18, N'CS002', N'PR032', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (20, N'CS003', N'PR098', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (21, N'CS003', N'PR097', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (22, N'CS003', N'PR087', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (23, N'CS003', N'PR096', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (24, N'CS003', N'PR021', CAST(0xD73E0B00 AS Date))
INSERT [dbo].[Wishlist] ([WishlistID], [CustomerID], [ProductID], [DateCreated]) VALUES (25, N'CS003', N'PR020', CAST(0xD73E0B00 AS Date))
SET IDENTITY_INSERT [dbo].[Wishlist] OFF
ALTER TABLE [dbo].[Admins] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Admins] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Brands] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Categories] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT ((1)) FOR [Gender]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customers] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (getdate()) FOR [OrderDate]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[OrdersDetails] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [IsStatus]
GO
ALTER TABLE [dbo].[Ratings] ADD  DEFAULT (getdate()) FOR [RatingDate]
GO
ALTER TABLE [dbo].[Wishlist] ADD  DEFAULT (getdate()) FOR [DateCreated]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_ProductsBrands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([BrandID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_ProductsBrands]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_ProductsCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_ProductsCategories]
GO
ALTER TABLE [dbo].[ProductsDetails]  WITH CHECK ADD  CONSTRAINT [FK_ProductsProDetails] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductsDetails] CHECK CONSTRAINT [FK_ProductsProDetails]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_RatingEmail] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_RatingEmail]
GO
ALTER TABLE [dbo].[Ratings]  WITH CHECK ADD  CONSTRAINT [FK_RatingProduct] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Ratings] CHECK CONSTRAINT [FK_RatingProduct]
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Wishlist]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
