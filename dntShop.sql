Create database dntShop
go
use dntShop
go
create table Admins
(
	AdminID	varchar(10) PRIMARY KEY,
	Email varchar(100) not null,
	[Password] varchar(30) not null,
	FullName nvarchar(50) not null,
	Avatar varchar(200) not null,
	CreatedDate date default getDate(),
	IsStatus bit default 1
)
go
create table Brands (
	BrandID varchar(10) primary key,
	BrandName nvarchar(100) not null,
	BrandImages nvarchar(max),
	Descriptions nvarchar(max),
	IsStatus bit default 1 
)
go

create table Categories (
	CategoryID varchar(10) primary key,
	CategoryName nvarchar(100) not null,
	CategoryImage varchar(max) not null,
	IsStatus bit default 1,
)
go
create table Products (
	ProductID varchar(10) primary key,
	ProductName nvarchar(100) not null,
	Price int not null,
	DiscountProduct int not null,
	CategoryID varchar(10) not null, 
	BrandID varchar(10) not null,
	Descriptions nvarchar(max),
	Feature nvarchar(100), --New, Hot, Sale, etc.
	Image1 varchar(max),
	Image2 varchar(max),
	Image3 varchar(max),
	Image4 varchar(max),
	IsStatus bit default 1,
	CONSTRAINT FK_ProductsCategories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID),
	CONSTRAINT FK_ProductsBrands FOREIGN KEY (BrandID) REFERENCES Brands(BrandID)
)
go

create table Customers (
	CustomerID varchar(10) primary key,
	Email varchar(100) not null,
	[Password] varchar(30) not null,
	FirstName nvarchar(50) not null,
	LastName nvarchar(50) not null,
	Gender bit default 1,
	Phone varchar(20),
	[Address] nvarchar(max), 
	Avatar varchar(200) not null,
	CreatedDate date default getDate(),
	IsStatus bit default 1
)
go
create table Ratings (
	RatingID int identity(1,1) primary key,
	ProductID varchar(10) not null,
	CustomerID varchar(10) not null,
	Rate int not null,
	Content nvarchar(max),
	RatingDate date default getdate(),
	CONSTRAINT FK_RatingProduct FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
	CONSTRAINT FK_RatingEmail FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
)
go
create view AverageRatings as
	select ROW_NUMBER() OVER (ORDER BY p.ProductName) AS id, p.ProductID, p.ProductName, AVG(convert(decimal(4,2),r.Rate)) as averageRating
	from Products p join Ratings r on p.ProductID = r.ProductID
	group by p.ProductName, p.ProductID
go

create table Wishlist (
	WishlistID int identity(1,1) primary key,
	CustomerID varchar(10) not null foreign key references Customers(CustomerID),
	ProductID varchar(10) foreign key references Products(ProductID) not null,
	DateCreated date default getDate()
)
go
create table Orders (
	OrderID varchar(10) primary key,
	CustomerID varchar(10) not null foreign key references Customers(CustomerID),
	Total int not null,
	ShipName nvarchar(100) not null,
	ShipPhone varchar(20) not null,
	ShipAddress nvarchar(200) not null,
	ShipDate date not null,
	ShipNote nvarchar(max),
	OrderDate date default getDate(),
	PaymentMethod nvarchar(100) not null, --Cash, Bank Transfer, Credit Card
	ProcessStatus nvarchar(50) not null, -- Processing, Shipping, Completed
	IsStatus bit default 1
)
go
create table OrdersDetails (
	OdID int identity(1,1) primary key,
	OrderID varchar(10) not null foreign key references Orders(OrderID),
	ProductID varchar(10) foreign key references Products(ProductID) not null,
	SellingPrice int not null,
	Quantity int not null,
	IsStatus bit default 1
)	
go
insert Admins(AdminID, Email, [Password], FullName, Avatar) values
('AD001','duy@mail.com', '123456', 'Tu Khac Duy', 'images/Avatars/default-avatar.jpg'),
('AD002','thao@mail.com', '123456', 'Le Phuong Thao', 'images/Avatars/default-avatar3.jpg'),
('AD003','nga@mail.com', '123456', 'Tran Quynh Nga', 'images/Avatars/default-avatar4.jpg'),
('AD004','tuyet@mail.com', '123456', 'Nguyen Minh Tuyet','images/Avatars/default-avatar5.jpg'),
('AD005','ngan@mail.com', '123456', 'Tran Le Ngan', 'images/Avatars/default-avatar4.jpg'),
('AD006','thang@mail.com', '123456', 'Nguyen Quoc Thang', 'images/Avatars/default-avatar2.jpg'),
('AD007','tuan@mail.com', '123456', 'Tran Quoc Tuan', 'images/Avatars/default-avatar1.jpg'),
('AD008','nam@mail.com', '123456', 'Nguyen Hoang Nam', 'images/Avatars/default-avatar2.jpg')
go

insert Customers(CustomerID, Email, [Password], FirstName, LastName, Gender, Phone, Avatar, [Address]) values
('CS001','thang@mail.com', '123456', 'Thang', 'Nguyen', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS002','duy@mail.com', '123456', 'Duy', 'Khac', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS003','brian@mail.com', '123456', 'Brian', 'Welcker', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS004','tete@mail.com', '123456', 'Tete', 'Mensa-Annan', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS005','syed@mail.com', '123456', 'Syed', 'Abbas', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS006','tuan@mail.com', '123456', 'Tuan', 'Tran', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS007','nam@mail.com', '123456', 'Nam', 'Nguyen', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS008','ronald@mail.com', '123456', 'Ronald', 'Adina', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS009','samuel@mail.com', '123456', 'Samuel', 'Agcaoili', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS010','james@mail.com', '123456', 'James', 'Aguilar', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS011','gail@mail.com', '123456', 'Gail', 'Erickson', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS012','janice@mail.com', '123456', 'Janice', 'Galvin', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS013','jill@mail.com', '123456', 'Jill', 'Williams', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg','590 CMT8, Q3, HCM'),
('CS014','catherine@mail.com', '123456', 'Catherine', 'Abel', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS015','kim@mail.com', '123456', 'Kim', 'Abercrombie', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS016','frances@mail.com', '123456', 'Frances', 'Adams', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg','590 CMT8, Q3, HCM'),
('CS017','margaret@mail.com', '123456', 'Margaret', 'Smith', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS018','carla@mail.com', '123456', 'Carla', 'Adams', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS019','kimitry@mail.com', '123456', 'Kim', 'Akers', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS020','lili@mail.com', '123456', 'Lili', 'Alameda', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg','590 CMT8, Q3, HCM'),
('CS021','TwannaEvans@mail.com', '123456', 'Twanna', 'Evans', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS022','AnnEvans@mail.com', '123456', 'Ann', 'Evans', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS023','JohnEvans@mail.com', '123456', 'John', 'Evans', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS024','MarcFaeber@mail.com', '123456', 'Marc', 'Faeber', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS025','FadiFakhouri@mail.com', '123456', 'Fadi', 'Fakhouri', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS026','CarolynFarino@mail.com', '123456', 'Carolyn', 'Farino', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS027','GeriFarrell@mail.com', '123456', 'Geri', 'Farrell', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS028','HanyingFeng@mail.com', '123456', 'Hanying', 'Feng', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS029','RhodaFinley@mail.com', '123456', 'Rhoda', 'Finley', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS030','DuaneFitzgerald@mail.com', '123456', 'Duane', 'Fitzgerald', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS031','JamesFine@mail.com', '123456', 'James', 'Fine', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS032','KathieFlood@mail.com', '123456', 'Kathie', 'Flood', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS033','JayFluegel@mail.com', '123456', 'Jay', 'Fluegel', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS034','KellyFocht@mail.com', '123456', 'Kelly', 'Focht', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS035','JeffreyFord@mail.com', '123456', 'Jeffrey', 'Ford', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS036','GarthFort@mail.com', '123456', 'Garth', 'Fort', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS037','DorothyFox@mail.com', '123456', 'Dorothy', 'Fox', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg','590 CMT8, Q3, HCM'),
('CS038','JudithFrazier@mail.com', '123456', 'Judith', 'Frazier', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS039','JohnFredericksen@mail.com', '123456', 'John', 'Fredericksen', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS040','SusanFrench@mail.com', '123456', 'Susan', 'French', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg','590 CMT8, Q3, HCM'),
('CS041','LiamFriedland@mail.com', '123456', 'Liam', 'Friedland', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS042','MihailFrintu@mail.com', '123456', 'Mihail', 'Frintu', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS043','JohnFord@mail.com', '123456', 'John', 'Ford', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS044','PaulFulton@mail.com', '123456', 'Paul', 'Fulton', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS045','DonFunk@mail.com', '123456', 'Don', 'Funk', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS046','BobGage@mail.com', '123456', 'Bob', 'Gage', 1, '028 3124578', 'images/Avatars/default-avatar.jpg','590 CMT8, Q3, HCM'),
('CS047','AldeenGallagher@mail.com', '123456', 'Aldeen', 'Gallagher', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg','590 CMT8, Q3, HCM'),
('CS048','MichaelGalos@mail.com', '123456', 'Michael', 'Galos', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg','590 CMT8, Q3, HCM'),
('CS049','JonGanio@mail.com', '123456', 'Jon', 'Ganio', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg','590 CMT8, Q3, HCM'),
('CS050','KathleenGarza@mail.com', '123456', 'Kathleen', 'Garza', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg','590 CMT8, Q3, HCM')
go

insert Brands(BrandID, BrandName, BrandImages, Descriptions) values
('BR001','Dell', 'images/Brands/1.png', 'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.'),
('BR002','HP', 'images/Brands/2.png', 'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.'),
('BR003','Asus', 'images/Brands/3.png', 'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.'),
('BR004','Apple', 'images/Brands/4.png', 'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.'),
('BR005','Samsung', 'images/Brands/5.png', 'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.'),
('BR006','MSI', 'images/Brands/6.png', 'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.'),
('BR007','Lenovo', 'images/Brands/7.png', 'The Dell name is a globally recognized brand and leader in the client solutions category among consumers and business/institutional customers. Use “Dell” in reference to client solutions and corporate functions.')
go

insert Categories(CategoryID, CategoryName, CategoryImage) values
('CA001','Laptops','images/Categories/shop01.png'),
('CA002','Smartphones','images/Categories/shop02.png'),
('CA003','Cameras','images/Categories/shop03.png'),
('CA004','Accessories','images/Categories/shop04.png')
go

insert Products(ProductID, ProductName, Price,DiscountProduct, CategoryID, BrandID, Descriptions, Feature, Image1, Image2, Image3, Image4) values
('PR001', 'Product Name goes here', 6,10,'CA001', 'BR001','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR002', 'Product Name goes here', 6,10,'CA001', 'BR001','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR003', 'Product Name goes here', 6,10,'CA001', 'BR001','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR004', 'Product Name goes here', 6,10,'CA001', 'BR001','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR005', 'Product Name goes here', 6,10,'CA001', 'BR001','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR006', 'Product Name goes here', 6,10,'CA003', 'BR002','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR007', 'Product Name goes here', 6,10,'CA003', 'BR002','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR008', 'Product Name goes here', 6,10,'CA003', 'BR002','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png'),
('PR009', 'Product Name goes here', 6,10,'CA003', 'BR002','Product Description:..................','New','product01.png', 'product03.png','product06.png','product08.png')
go