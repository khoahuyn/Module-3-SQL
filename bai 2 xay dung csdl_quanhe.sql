create database QUANLY_BANHANG;

create table Customer(
	cID int Not null auto_increment primary key,
    cName varchar(50) unique,
    cAge int Not null
);

create table ORDERS(
	oID int Not null auto_increment primary key,
	cID int Not null ,
    foreign key(cID)references Customer(cID),
    oDate varchar(50) unique,
    oTotalPrice int Not null
);


create table PRODUCT(
	pID int Not null auto_increment primary key,
    pName varchar(50) unique,
    pPrice int Not null
);

create table ORDERDETAIL(
	oID int Not null ,
	pID int Not null ,
    odQTY int not null,
	foreign key(oID) references ORDERS(oID),
	foreign key(pID) references PRODUCT(pID)
);