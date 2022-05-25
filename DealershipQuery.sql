use [master];
go

create database [CarDealership];
go

use [CarDealership];
go

create table account
(accountID int primary key identity(1,1),
username char(32) not null,
password char(64) not null);

create table customer
(customerID int primary key identity(1,1),
lastname char(32) not null,
firstname char(32) not null,
email char(64) not null,
telephone bigint not null);

create table inventory
(inventoryID int primary key identity(1,1),
vin char(17) not null,
color char(32) not null,
make char(32) not null,
model char(32) not null,
modeltrim char(64) not null,
modelyear int not null,
mileage int not null,
sold bit);

create table sales
(salesID int primary key identity(1,1),
inventoryID int foreign key references inventory(inventoryID),
customerID int foreign key references customer(customerID),
price decimal(10,2) not null);

insert into customer values('Richardson', 'Ralph','fake@fake.net',5555551001);
insert into customer values('Vaughan', 'Peter','test@test.com',5555551000);
insert into customer values('Edmonds', 'Michelle','123@real.edu',5551234567);

insert into inventory values('B196YZV980UVOM2HY','Blue','Toyota','Corolla','LE',2011,146000,0);
insert into inventory values('H4U7HR3NYF9R45E1D','Blue','Chevrolet','Cruze','LTZ',2011,70000,0);
insert into inventory values('MSHU2SM4TAGZB39R9','Green','Ford','Taurus','LS',2003,190000,0);
