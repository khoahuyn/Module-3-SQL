create database QuanLybanhang;
USE  QuanLybanhang;

create table Customer(
	cID int auto_increment primary key,
    Name varchar(25),
	cAge tinyint
	
);

create table Orders(
	oID  int auto_increment primary key,
    cID int not null ,
	oDate  datetime,
    oTotalPrice int ,
    foreign key(cID)references Customer(cID)
);


create table Product(
	pID int auto_increment primary key,
    pName varchar(25),
	pPrice int not null
);


create table OrderDetail(
	oID  int not null ,
    pID int not null,
    odQTY int not null,
    unique(oID,pID),
	foreign key(oID)references Orders(oID),
	foreign key(pID)references Product(pID)
);


INSERT INTO Customer
VALUES (1, 'Minh Quan', 10);
INSERT INTO Customer
VALUES (2, 'Ngoc Oanh', 20);
INSERT INTO Customer
VALUES (3, 'Hong Ha', 50);

INSERT INTO Orders(oID ,cID,oDate)
VALUES (1, 1,'2006-3-21');
INSERT INTO Orders(oID ,cID,oDate)
VALUES (2, 2, '2006-3-23');
INSERT INTO Orders(oID ,cID,oDate)
VALUES (3, 1 ,'2006-3-16');

INSERT INTO Product
VALUES (1, 'May Giat', 3),
       (2, 'Tu Lanh', 5),
       (3, 'Dieu Hoa', 7),
       (4, 'Quat', 1),
       (5, 'Bep Dien', 2);

INSERT INTO OrderDetail
VALUES (1, 1, 3),
       (1, 3, 7),
       (1, 4, 2),
       (2, 1, 1),
       (3, 1, 8),
       (2, 5, 4),
       (2, 3, 3);
       
select oId,oDate,ototalPrice from Orders;

select c.name, p.pname
from customer c
inner join Orders o on o.cID =c.cID
join OrderDetail od on o.oID=od.oID
inner join Product p on od.pID=p.pID
group by c.name, p.pname;



select c.cID, c.Name, c.cAge from customer c
left join Orders o on o.cID = c.cID
where o.cID is null;

select orders.oID,orders.oDate,sum(orderdetail.odQTY*product.pPrice) as giatien
from orderdetail join product on product.pID=orderdetail.pID
join orders on orders.oID=orderdetail.oID
group by orders.oID
