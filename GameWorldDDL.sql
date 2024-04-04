create database GameWorld;
use GameWorld;

drop table if exists Products;
drop table if exists Consoles;
drop table if exists VRHeadsets;
drop table if exists PCs;

drop table if exists ProductConsole;
drop table if exists ProductHeadset;
drop table if exists ProductPC;

drop table if exists Customers;
drop table if exists Sales;
drop table if exists PaymentsReceived;

drop table if exists Suppliers;
drop table if exists Purchases;
drop table if exists PaymentsPaid;

drop table if exists ReOrder;

create table if not exists Products(
 `make`  varchar(10),
 `model` varchar(15) character set utf8,
 `type`  varchar(105), 
 `price` float,
  primary key (`model`)
 );
 
create table if not exists Consoles(
 `model` 	varchar(15),
 `mem`   	varchar(10), 
 `gpu`   	varchar(20),
 `cpu`   	varchar(15),
 `quantity` int,
 primary key (`model`),
 foreign key (`model`) references Products(`model`)
 on delete cascade
);
 
create table if not exists VRHeadsets(
 `model` 	varchar(15), 
 `res` 		varchar(10), 
 `fov` 		varchar(10), 
 `refrate`	varchar(10), 
 `quantity` int,
 primary key (`model`),
 foreign key (`model`) references Products(`model`)
 on delete cascade
);

 create table if not exists PCs(
 `model` 	varchar(15),
 `cpu` 	 	varchar(15),
 `ram`   	varchar(10), 
 `mem`   	varchar(10),
 `quantity` int,
 primary key (`model`),
 foreign key (`model`) references Products(`model`)
 on delete cascade
);

create table if not exists ProductConsole(
 `make`  varchar(10),
 `model` varchar(15)
);

create table if not exists ProductHeadset(
 `make`  varchar(10),
 `model` varchar(15)
);

create table if not exists ProductPC(
 `make`  varchar(10),
 `model` varchar(15)
);

create table if not exists Customers(
 `ID`		int not null,
 `name`   	varchar(255), 
 `address`	varchar(255),
 `email`	varchar(255),
 `AmntDue`  float,
 primary key(`ID`) 
);
 
create table if not exists Sales(
 `SaleID`		 int not null auto_increment,
 `CustomerID` 	 int, 
 `CustomerName`  varchar(255),
 `model`		 varchar(15),
 `quantity`		 int,
 `day`			 date,
 `TotalAmnt`	 int,
 `paid`			 bool,
 primary key (`SaleID`),
 foreign key (`CustomerID`) references Customers(`ID`) on delete cascade,
 foreign key (`model`) references Products(`model`) on delete cascade
)auto_increment = 1000;

create table if not exists PaymentsReceived(
 `PaymentID`	 int not null auto_increment,
 `SaleID`		 int,
 `CustomerID` 	 int, 
 `CustomerName`  varchar(255),
 `day`			 date,
 `Amnt`	 		 int,
 primary key (`PaymentID`),
 foreign key (`SaleID`) references Sales(`SaleID`) on delete cascade,
 foreign key (`CustomerID`) references Customers(`ID`) on delete cascade
)auto_increment = 1000;

create table if not exists Suppliers(
 `ID` 		int, 
 `name`		varchar(255),
 `address`	varchar(255),
 `email`	varchar(255),
 `AmntOwed` int,
 primary key (`ID`)
);

create table if not exists Purchases(
 `PurchaseID`	int not null auto_increment,
 `SupplierID` 	int, 
 `SupplierName`	varchar(255),
 `model`		varchar(15),
 `quantity`		int,
 `day`			date,
 `TotalAmnt`	int,
 `paid`			bool,
 primary key (`PurchaseID`),
 foreign key (`SupplierID`) references Suppliers(`ID`) on delete cascade,
 foreign key (`model`) references Products(`model`) on delete cascade
)auto_increment = 1000;

create table if not exists PaymentsPaid(
 `PaymentID`	 int not null auto_increment,
 `PurchaseID`	 int,
 `SupplierID` 	 int, 
 `SupplierName`  varchar(255),
 `day`			 date,
 `Amnt`	 		 int,
 primary key (`PaymentID`),
 foreign key (`PurchaseID`) references Purchases(`PurchaseID`) on delete cascade,
 foreign key (`SupplierID`) references Suppliers(`ID`) on delete cascade
)auto_increment = 1000;

create table if not exists ReOrder(
 `ReorderID` 	int not null auto_increment,
 `model` 		varchar(15),
 `CurStock` 	int,
 `day`	 		date,
 primary key (`ReorderID`)
)auto_increment 0;


SET FOREIGN_KEY_CHECKS=0;