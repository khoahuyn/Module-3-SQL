create database student_hs;

create table bang_tt(
	name_id int,
    age_hs int,
    address_country varchar(30)
);

select *from bang_tt;
insert into bang_tt(name_id,age_hs,address_country)
value(12,20,'tan');

insert into bang_tt(name_id,age_hs,address_country)
value(23,25,'nghia');

update bang_tt
set address_country='tuan'
where name_id=12;

delete from bang_tt
where age_hs=20;

alter table bang_tt
add column nghe_nghiep varchar(50);

update bang_tt
set nghe_nghiep='giao vien'
where name_id=23;