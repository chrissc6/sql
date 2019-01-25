use master;
go
--after creating database once uncomment alter statement
alter database PrsDb set single_user with rollback immediate
go
drop database if exists PrsDb;
go
create database PrsDb;
go
use PrsDb;
go
--after this create your tables

create table Users(
Id int not null Primary Key identity(1,1),
Username nvarchar(30) not null unique,
Password nvarchar(30) not null,
FirstName nvarchar(30) not null,
LastName nvarchar(30) not null,
Phone nvarchar(12),
Email nvarchar(255),
IsReviewer bit not null default 0,
IsAdmin bit not null default 0,
Active bit not null default 1
);
go

insert into Users
(Username,Password,FirstName,LastName, IsAdmin)
values 
('user1', 'pass1', 'john', 'smith', 1)

insert into Users
(Username,Password,FirstName,LastName)
values 
('user2', 'pass2', 'hello', 'world')
go

select * from Users
go

create table Vendors(
Id int not null primary key identity(1,1),
Code nvarchar(4) not null unique,
Name nvarchar(50) not null,
Address nvarchar(30),
City nvarchar(30),
State nchar(2),
Zip nvarchar(10),
Phone nvarchar(12),
Email nvarchar(255),
IsPreferred bit not null default 1,
Active bit not null default 1
);
go

insert into Vendors
(Code,Name)
values
('AMAZ', 'Amazon')

insert into Vendors
(Code,Name)
values
('MICR', 'Microsoft')

insert into Vendors
(Code,Name)
values
('TRGT','Target')
go

select * from Vendors;
go

create table Products(
Id int not null primary key identity(1,1),
VendorsId int not null foreign key references Vendors(id),
PartNumber nvarchar(30) not null,
Name nvarchar(30) not null,
Price decimal(9,2) not null default 0,
Unit nvarchar(10) not null default 'Each',
PhotoPath nvarchar(255),
Active bit not null default 1
);
go

insert into Products
(VendorsId, PartNumber,Name,Price)
values
(1, '1', 'Echo', 99.99)
insert into Products
(VendorsId, PartNumber,Name,Price)
values
(1, '2', 'Echo Dot', 39.99)
insert into Products
(VendorsId, PartNumber,Name,Price)
values
(2, '1', 'Office 365', 99.99)
insert into Products
(VendorsId, PartNumber, Name,Price)
values
(2, '2', 'Microsoft Word', 39.99)
insert into Products
(VendorsId, PartNumber,Name,Price)
values
(3, '1', 'Timex', 19.99)
insert into Products
(VendorsId, PartNumber, Name, Price)
values
(3, '2', 'Ipad', 99.99)

select * from Products
go

create table Requests(
Id int not null primary key identity(1,1),
UsersId int not null foreign key references Users(Id),
Description nvarchar(80),
Justification nvarchar (80),
RejectionReason nvarchar(80),
DeliveryMode nvarchar(30) default 'Pickup',
ReviewDate datetime not null default getdate(),
Status nvarchar(10) not null default 'NEW'
	check (Status in ('NEW','REVIEW','APPROVED','REJECTED')),
Total decimal(11,2) not null default 0,
Active bit not null default 1
);
go

insert into Requests
(Usersid, Description)
values
(1, 'First Request')

select * from Requests
go

create table RequestLines(
Id int not null primary key identity(1,1),
ProductsId int not null foreign key references Products(Id),
RequestsId int not null foreign key references Requests(Id),
Quantity int not null default 1
);
go

insert into RequestLines
(ProductsId,RequestsId)
values
(1,1),(2,1),(3,1),(4,1),(5,1)
insert into RequestLines
(ProductsId,RequestsId,Quantity)
values
(6,1,2)

select * from RequestLines;
go

