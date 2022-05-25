-- use Master DB
use [master];
go

-- create McLaughlinDealer
create database [McLaughlinDealer];
go

-- specify the db to use when creating tables and inserting data
use [McLaughlinDealer];
go

-- create tables
create table customer
(customerID int primary key identity(1,1),
lastname char(25),
firstname char(25));


create table rep
(repID int primary key identity(1,1),
lastname char(25),
firstname char(25));

create table basecar
(basecarID int primary key identity(1,1),
vin char(25),
basecarmodel char(55),
basecarmodelyear date,
basecarmodelfactorycost decimal(7,2),
basecarmodelmsrp decimal(7,2),
sold bit);

create table trim
(trimID int primary key identity(1,1),
trimtype char(55),
trimtypeyear date,
trimtypefactorycost decimal(7,2),
trimtypemsrp int);

create table inventory
(inventoryID int primary key identity(1,1),
basecarID int foreign key references basecar(basecarID),
trimID int foreign key references trim(trimID));

create table sales
(salesID int primary key identity(1,1),
inventoryID int foreign key references inventory(inventoryID),
customerID int foreign key references customer(customerID),
repID int foreign key references rep(repID),
saledate date,);

-- rep table data
-- auto-incrementing (1,1) established

insert into rep values('Thompson','Rhonda');
insert into rep values('Harrison','George');
insert into rep values('Gilliam','Terry');


-- customer table data
-- auto-incrementing (1,1) established

insert into customer values('Richardson', 'Ralph');
insert into customer values('Vaughan', 'Peter');
insert into customer values('Edmonds', 'Michelle');
insert into customer values('Warner', 'Diana');
insert into customer values('Vodvarka', 'Joanna');
insert into customer values('Rappaport', 'David');
insert into customer values('Palin', 'Michael');
insert into customer values('Dixon', 'Malcolm');
insert into customer values('Helmond', 'Katherine');
insert into customer values('Purvis', 'Jamie');
insert into customer values('Daker', 'David');
insert into customer values('Fearn', 'Sheila');
insert into customer values('Connery', 'Sean');
insert into customer values('Broadbent', 'Jim');
insert into customer values('Young', 'Jill');
insert into customer values('Devenish', 'Myrtle');
insert into customer values('Bowes', 'Brianna');
insert into customer values('Baker', 'Kenny');
insert into customer values('Lissek', 'Lannie');
insert into customer values('Bayler', 'Tara');
insert into customer values('MacLachlan', 'Eileen');
insert into customer values('McKeown', 'Charles');
insert into customer values('Holm', 'Ian');
insert into customer values('Hughman', 'John');
insert into customer values('McCarthy', 'Nell');
insert into customer values('Mulholland', 'Declan');
insert into customer values('Jonfield', 'Petra');
insert into customer values('Deadman', 'Derek');
insert into customer values('Cleese', 'John');
insert into customer values('Wells', 'Geralt');
insert into customer values('Frost', 'Roger');
insert into customer values('Carroll', 'Sarah');
insert into customer values('Powell', 'Ashley');
insert into customer values('Winston', 'Dennis');
insert into customer values('James', 'Juliette');
insert into customer values('Duvall', 'Shelley');
insert into customer values('Holmes', 'Scarlett');
insert into customer values('Grant', 'Chris');
insert into customer values('Jay', 'Tony');
insert into customer values('Finn', 'Edwin');

-- insert basecar table data
-- auto-incrementing (1,1) established

--
-- COROLLA 4 DOOR
insert into basecar values('B196YZV980UVOM2HYA28','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('H4U7HR3NYF9R45E1DH29','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('MSHU2SM4TAGZB39R98R9','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('PURN969333TOM9F587P4','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('N0C6CKZRNSLQKV07AMET','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('73JAK633V3FVY5X476C0','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('EOKUM0UV1NUXTRA1BLOU','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('HMAU44BRL3O0P6UMPR4F','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('8RG6W3JQIC0O4XDO5TG1','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('CIGLCZ5K88MONRR2H7XZ','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('1PXZ4DBU6BTGVZ16QLX7','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('YGXJVYFERZOMDQ414Z49','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
insert into basecar values('OT5KOHM2CIQXEIB6R1TL','COROLLA 4 DOOR','2018-01-01',14600,19000,0);
--
-- YARIS 4 DOOR
insert into basecar values('9F1T567J5XDU5TDK14AS','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('871VY0VHAOPLI65BUOI2','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('WC2UOTAJ36IG5AMYFV2I','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('DWVRPP9QJCTRHEGRONRL','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('XN0REI856SRZ2SOS4L2D','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('2B5IHNG9K24Z5VLQITYE','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('M64CWETTV78KGDKYHAL8','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('Y26WYX5DRPCTXWQBZEN3','YARIS 4 DOOR','2018-01-01',11600,15500,0);
insert into basecar values('RIM9DNBFL3ICVJ57V2AP','YARIS 4 DOOR','2018-01-01',11600,15500,0);
--
-- CAMRY 4 DOOR
insert into basecar values('S58D85R6GYLLX784NUO8','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('4WKVJBBG8V8DMBR7PA9T','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('HF6OQ3K42MBL1N19A5Z7','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('6SO3FSISE42IS00JUOVF','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('U9UN39SPE3W62EVDJV9X','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('XRF574M2OBZ6UNRS0O5A','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('9QC4UQU33E02GJZ3KDY8','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('5E42P9IMMULDJDVFUKK5','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('GF0B83AKUJCZ0XV4P5WE','CAMRY 4 DOOR','2018-01-01',18000,23600,0);
insert into basecar values('MQAQ18P8NH8V885OIIQL','CAMRY 4 DOOR','2018-01-01',18000,23600,0);

-- AVALON 4 DOOR
insert into basecar values('Y1FR88053AWMY45ZS2P6','AVALON 4 DOOR','2018-01-01',29800,33500,0);
insert into basecar values('D08EAXVRUW2IJ1K6Q9V1','AVALON 4 DOOR','2018-01-01',29800,33500,0);
insert into basecar values('UM75FYAYM3KV7G19WKBS','AVALON 4 DOOR','2018-01-01',29800,33500,0);
insert into basecar values('7R1O5LDAIV15I531JQRV','AVALON 4 DOOR','2018-01-01',29800,33500,0);
insert into basecar values('KI2KWZHCXHFA40SNJ77N','AVALON 4 DOOR','2018-01-01',29800,33500,0);
insert into basecar values('N6V4VLU1T56993ICWXKB','AVALON 4 DOOR','2018-01-01',29800,33500,0);
insert into basecar values('2F5YCJ0QNVNC5GH4QP7B','AVALON 4 DOOR','2018-01-01',29800,33500,0);
insert into basecar values('6FTLE475ZL846P3CR59K','AVALON 4 DOOR','2018-01-01',29800,33500,0);

-- trim table data
-- auto-incrementing (1,1) established 

------------------------- COROLLA 4 DOOR ----------------------------
--
--trimID=1
insert into trim values('COROLLA LE','2018-01-01',0,0);

--trimID=2
insert into trim values('COROLLA SE','2018-01-01',1050,1500);

--trimID=3
insert into trim values('COROLLA XLE','2018-01-01',2300,3000);

------------------------- YARIS 4 DOOR -----------------------------
--
--trimID=4
insert into trim values('YARIS L','2018-01-01',0,0);

--trimID=5
insert into trim values('YARIS LE','2018-01-01',500,1000);

--trimID=6
insert into trim values('YARIS XLE','2018-01-01',1260,2100);

------------------------- CAMRY 4 DOOR --------------------------
--
--trimID=7
insert into trim values('CAMRY L','2018-01-01',0,0);

--trimID=8
insert into trim values('CAMRY LE','2018-01-01',200,500);

--trimID=9
insert into trim values('CAMRY SE','2018-01-01',1250,1700);


------------------------- AVALON 4 DOOR -----------------------------
--
--trimID=10
insert into trim values('AVALON XLE','2018-01-01',0,0);


-- insert inventory table data
-- auto-incrementing (1,1) established 

------------------------------------------------------
-- trimID=1                               			--
--                                                  --
-- COROLLA 4 DOOR LE                                --
------------------------------------------------------

insert into inventory values(1,1);
------------------------------------------------------
insert into inventory values(2,1);
------------------------------------------------------
insert into inventory values(3,1);
------------------------------------------------------
insert into inventory values(4,1);
------------------------------------------------------
insert into inventory values(5,1);

------------------------------------------------------
-- trimID=2                               			--
--                                                  --
-- COROLLA 4 DOOR SE                                --
------------------------------------------------------

insert into inventory values (6,2);
------------------------------------------------------
insert into inventory values (7,2);
------------------------------------------------------
insert into inventory values(8,2);
------------------------------------------------------
insert into inventory values(9,2);

------------------------------------------------------
-- trimID=3                               			--
--                                                  --
-- COROLLA 4 DOOR XLE                               --
------------------------------------------------------

insert into inventory values(10,3);
------------------------------------------------------
insert into inventory values(11,3);
------------------------------------------------------
insert into inventory values(12,3);
------------------------------------------------------
insert into inventory values(13,3);

------------------------------------------------------
-- trimID=4                               			--
--                                                  --
-- YARIS 4 DOOR L                                   --
------------------------------------------------------

insert into inventory values(14,4);
------------------------------------------------------
insert into inventory values(15,4);
------------------------------------------------------
insert into inventory values(16,4);
------------------------------------------------------
insert into inventory values(17,4);
------------------------------------------------------
insert into inventory values(18,4);

------------------------------------------------------
-- trimID=5                               			--
--                                                  --
-- YARIS 4 DOOR LE                                  --
------------------------------------------------------

insert into inventory values(19,5);
------------------------------------------------------
insert into inventory values(20,5);

------------------------------------------------------
-- trimID=6                               			--
--                                                  --
-- YARIS 4 DOOR XLE                                 --
------------------------------------------------------

insert into inventory values(21,6);
------------------------------------------------------
insert into inventory values(22,6);

------------------------------------------------------
-- trimID=7                               			--
--                                                  --
-- CAMRY 4 DOOR L                                   --
------------------------------------------------------

insert into inventory values(23,7);
------------------------------------------------------
insert into inventory values(24,7);
------------------------------------------------------
insert into inventory values(25,7);
------------------------------------------------------
insert into inventory values(26,7);
------------------------------------------------------
insert into inventory values(27,7);

------------------------------------------------------
-- trimID=8                               			--
--                                                  --
-- CAMRY 4 DOOR LE                                  --
------------------------------------------------------

insert into inventory values(28,8);
------------------------------------------------------
insert into inventory values(29,8);
------------------------------------------------------
insert into inventory values(30,8);

------------------------------------------------------
-- trimID=9                               			--
--                                                  --
-- CAMRY 4 DOOR SE                                  --
------------------------------------------------------

insert into inventory values(31,9);
------------------------------------------------------
insert into inventory values(32,9);

------------------------------------------------------
-- trimID=10                              			--
--                                                  --
-- AVALON 4 DOOR XLE                                --
------------------------------------------------------

insert into inventory values(33,10);
------------------------------------------------------
insert into inventory values(34,10);
------------------------------------------------------
insert into inventory values(35,10);
------------------------------------------------------
insert into inventory values(36,10);
------------------------------------------------------
insert into inventory values(37,10);
------------------------------------------------------
insert into inventory values(38,10);
------------------------------------------------------
insert into inventory values(39,10);
------------------------------------------------------
insert into inventory values(40,10);


-- insert sales table data
-- auto-incrementing (1,1) established

insert into sales values(22,1,3,'2017-08-30');
update basecar set sold=1 where basecarID=22;

insert into sales values(5,2,1,'2017-09-02');
update basecar set sold=1 where basecarID=5;

insert into sales values(31,3,2,'2017-09-04');
update basecar set sold=1 where basecarID=31;

insert into sales values(37,4,1,'2017-09-04');
update basecar set sold=1 where basecarID=37;

insert into sales values(29,5,1,'2017-09-04');
update basecar set sold=1 where basecarID=29;

insert into sales values(18,6,3,'2017-09-05');
update basecar set sold=1 where basecarID=18;

insert into sales values(36,7,1,'2017-09-06');
update basecar set sold=1 where basecarID=36;

insert into sales values(24,8,3,'2017-09-07');
update basecar set sold=1 where basecarID=24;

insert into sales values(7,9,3,'2017-09-08');
update basecar set sold=1 where basecarID=7;

insert into sales values(10,10,2,'2017-09-09');
update basecar set sold=1 where basecarID=10;

insert into sales values(38,11,3,'2017-09-09');
update basecar set sold=1 where basecarID=38;

insert into sales values(27,12,1,'2017-09-09');
update basecar set sold=1 where basecarID=27;

insert into sales values(13,13,1,'2017-09-09');
update basecar set sold=1 where basecarID=13;

insert into sales values(35,14,1,'2017-09-11');
update basecar set sold=1 where basecarID=35;

insert into sales values(16,15,3,'2017-09-11');
update basecar set sold=1 where basecarID=16;

insert into sales values(32,16,2,'2017-09-11');
update basecar set sold=1 where basecarID=32;

insert into sales values(19,17,3,'2017-09-12');
update basecar set sold=1 where basecarID=19;

insert into sales values(17,18,1,'2017-09-13');
update basecar set sold=1 where basecarID=17;

insert into sales values(8,19,2,'2017-09-13');
update basecar set sold=1 where basecarID=8;

insert into sales values(2,20,2,'2017-09-15');
update basecar set sold=1 where basecarID=2;

insert into sales values(39,21,3,'2017-09-15');
update basecar set sold=1 where basecarID=39;

insert into sales values(23,22,3,'2017-09-15');
update basecar set sold=1 where basecarID=23;

insert into sales values(4,23,2,'2017-09-16');
update basecar set sold=1 where basecarID=1;

insert into sales values(25,24,1,'2017-09-16');
update basecar set sold=1 where basecarID=25;

insert into sales values(20,25,1,'2017-09-16');
update basecar set sold=1 where basecarID=20;

insert into sales values(30,26,2,'2017-09-16');
update basecar set sold=1 where basecarID=30;

insert into sales values(40,27,3,'2017-09-18');
update basecar set sold=1 where basecarID=40;

insert into sales values(3,28,1,'2017-09-18');
update basecar set sold=1 where basecarID=3;

insert into sales values(15,29,2,'2017-09-19');
update basecar set sold=1 where basecarID=15;

insert into sales values(6,30,1,'2017-09-21');
update basecar set sold=1 where basecarID=6;

insert into sales values(11,31,1,'2017-09-22');
update basecar set sold=1 where basecarID=11;

insert into sales values(21,32,3,'2017-09-22');
update basecar set sold=1 where basecarID=21;

insert into sales values(14,33,2,'2017-09-23');
update basecar set sold=1 where basecarID=14;

insert into sales values(9,34,3,'2017-09-23');
update basecar set sold=1 where basecarID=9;

insert into sales values(28,35,1,'2017-09-23');
update basecar set sold=1 where basecarID=28;

insert into sales values(26,36,2,'2017-09-23');
update basecar set sold=1 where basecarID=26;

insert into sales values(12,37,3,'2017-09-23');
update basecar set sold=1 where basecarID=12;

insert into sales values(33,38,1,'2017-09-26');
update basecar set sold=1 where basecarID=33;

insert into sales values(34,39,1,'2017-09-29');
update basecar set sold=1 where basecarID=34;

insert into sales values(1,40,3,'2017-09-29');
update basecar set sold=1 where basecarID=1;

select s.salesID, s.saledate, b.basecarmodel, t.trimtype, (b.basecarmodelmsrp+t.trimtypemsrp) as msrp
from sales s, inventory i, trim t, basecar b
where s.inventoryID=i.inventoryID 
and i.trimID=t.trimID
and i.basecarID=b.basecarID
order by s.saledate