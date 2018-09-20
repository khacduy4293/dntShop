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
	Quantity int not null
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
	SellingPrice decimal(18,2) not null,
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

insert Customers(CustomerID, Email, [Password], FirstName, LastName, Gender, Phone, Avatar) values
('CS001','thang@mail.com', '123456', 'Thang', 'Nguyen', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS002','duy@mail.com', '123456', 'Duy', 'Khac', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS003','brian@mail.com', '123456', 'Brian', 'Welcker', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS004','tete@mail.com', '123456', 'Tete', 'Mensa-Annan', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS005','syed@mail.com', '123456', 'Syed', 'Abbas', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS006','tuan@mail.com', '123456', 'Tuan', 'Tran', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS007','nam@mail.com', '123456', 'Nam', 'Nguyen', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS008','ronald@mail.com', '123456', 'Ronald', 'Adina', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS009','samuel@mail.com', '123456', 'Samuel', 'Agcaoili', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS010','james@mail.com', '123456', 'James', 'Aguilar', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS011','gail@mail.com', '123456', 'Gail', 'Erickson', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS012','janice@mail.com', '123456', 'Janice', 'Galvin', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS013','jill@mail.com', '123456', 'Jill', 'Williams', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg'),
('CS014','catherine@mail.com', '123456', 'Catherine', 'Abel', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS015','kim@mail.com', '123456', 'Kim', 'Abercrombie', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS016','frances@mail.com', '123456', 'Frances', 'Adams', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg'),
('CS017','margaret@mail.com', '123456', 'Margaret', 'Smith', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS018','carla@mail.com', '123456', 'Carla', 'Adams', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS019','kimitry@mail.com', '123456', 'Kim', 'Akers', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS020','lili@mail.com', '123456', 'Lili', 'Alameda', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg'),
('CS021','TwannaEvans@mail.com', '123456', 'Twanna', 'Evans', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS022','AnnEvans@mail.com', '123456', 'Ann', 'Evans', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS023','JohnEvans@mail.com', '123456', 'John', 'Evans', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS024','MarcFaeber@mail.com', '123456', 'Marc', 'Faeber', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS025','FadiFakhouri@mail.com', '123456', 'Fadi', 'Fakhouri', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS026','CarolynFarino@mail.com', '123456', 'Carolyn', 'Farino', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS027','GeriFarrell@mail.com', '123456', 'Geri', 'Farrell', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS028','HanyingFeng@mail.com', '123456', 'Hanying', 'Feng', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS029','RhodaFinley@mail.com', '123456', 'Rhoda', 'Finley', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS030','DuaneFitzgerald@mail.com', '123456', 'Duane', 'Fitzgerald', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS031','JamesFine@mail.com', '123456', 'James', 'Fine', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS032','KathieFlood@mail.com', '123456', 'Kathie', 'Flood', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS033','JayFluegel@mail.com', '123456', 'Jay', 'Fluegel', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS034','KellyFocht@mail.com', '123456', 'Kelly', 'Focht', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS035','JeffreyFord@mail.com', '123456', 'Jeffrey', 'Ford', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS036','GarthFort@mail.com', '123456', 'Garth', 'Fort', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS037','DorothyFox@mail.com', '123456', 'Dorothy', 'Fox', 0, '028 3124578', 'images/Avatars/default-avatar4.jpg'),
('CS038','JudithFrazier@mail.com', '123456', 'Judith', 'Frazier', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS039','JohnFredericksen@mail.com', '123456', 'John', 'Fredericksen', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS040','SusanFrench@mail.com', '123456', 'Susan', 'French', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg'),
('CS041','LiamFriedland@mail.com', '123456', 'Liam', 'Friedland', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS042','MihailFrintu@mail.com', '123456', 'Mihail', 'Frintu', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS043','JohnFord@mail.com', '123456', 'John', 'Ford', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS044','PaulFulton@mail.com', '123456', 'Paul', 'Fulton', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS045','DonFunk@mail.com', '123456', 'Don', 'Funk', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS046','BobGage@mail.com', '123456', 'Bob', 'Gage', 1, '028 3124578', 'images/Avatars/default-avatar.jpg'),
('CS047','AldeenGallagher@mail.com', '123456', 'Aldeen', 'Gallagher', 0, '028 3124578', 'images/Avatars/default-avatar3.jpg'),
('CS048','MichaelGalos@mail.com', '123456', 'Michael', 'Galos', 1, '028 3124578', 'images/Avatars/default-avatar2.jpg'),
('CS049','JonGanio@mail.com', '123456', 'Jon', 'Ganio', 1, '028 3124578', 'images/Avatars/default-avatar1.jpg'),
('CS050','KathleenGarza@mail.com', '123456', 'Kathleen', 'Garza', 0, '028 3124578', 'images/Avatars/default-avatar5.jpg')
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

insert Products(ProductID, ProductName, Price, CategoryID, BrandID, Descriptions, Feature) values
('PR001', 'Boys Over The Head Basic Hoody', 6,'CA003', 'BR001','Finish off an outfit in style with boohoo''s range of boys'' tops. Go for a layered look with shirts and vests or keep it casual with a cute tee!','New'),
('PR002', 'Boys Over The Head Basic Hoody', 6,'CA003', 'BR001','Finish off an outfit in style with boohoo''s range of boys'' tops. Go for a layered look with shirts and vests or keep it casual with a cute tee!','New'),
('PR003', 'Boys Over The Head Basic Hoody', 6,'CA003', 'BR001','Finish off an outfit in style with boohoo''s range of boys'' tops. Go for a layered look with shirts and vests or keep it casual with a cute tee!','New'),
('PR004', 'Boys Over The Head Basic Hoody', 6,'CA003', 'BR001','Finish off an outfit in style with boohoo''s range of boys'' tops. Go for a layered look with shirts and vests or keep it casual with a cute tee!','New')
go