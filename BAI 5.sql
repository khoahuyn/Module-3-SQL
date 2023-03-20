create database lutru_thongtin;
use lutru_thongtin;

create table Products (
	ID  int not null,
	productCode varchar(50),
	productName varchar(50),
    productPrice int not null ,
    productAmount varchar(50),
	productDescription varchar(50),
    productStatus  bit 
);


INSERT INTO Products
VALUES (1, 'MG01','May Giat', 300,2,'GOOD',0),
       (2, 'TL02', 'Tu Lanh', 450,5,'GOOD',1),
       (3, 'DH03', 'Dieu Hoa', 6000,1,'NORMAL',1),
       (4, 'QA04', 'Quat', 50,10,'SIMPLE',0),
       (5, 'BD05', 'Bep Dien',565,4,'OLD',1);
       

create unique index ten_sanpham on products( productCode);
create index ma_sapham on products(productName, productPrice);

explain select *
from products
where productcode='QA04' ;


create view xem_sanpham as
select productCode,productName,productPrice,productStatus
from products ;


update xem_sanpham set productPrice=8000
where productCode='QA04';

drop view xem_sanpham;


delimiter //
	create procedure thong_tin()
		begin
			select *from products;
        end //
delimiter ;
call thong_tin();
			
	
delimiter //
	create procedure them_sanpham()
		begin
            insert into products
				values(6, 'XM06', 'XE MAY',4000,3,'NEW',0);
        end //
delimiter ;
call them_sanpham();

delimiter //
	create procedure sua_id(in a int )
		begin
			update products
            set productDescription ='Better'
            where id=a;
        end //
delimiter ;
call sua_id(2);


delimiter //
	create procedure xoa_id(in a int )
		begin
            delete from products
            where id=a;
        end //
delimiter ;
call xoa_id(2);
