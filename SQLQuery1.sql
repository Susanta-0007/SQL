-- DDL -> Data Defination Language
create table amazon_orders
(
order_id integer,
order_date date,
product_name varchar(50) ,
total_price decimal(5,2),
payment_mathod varchar(20)
);

-- Change Data type of a column :
alter table amazon_orders alter column order_date datetime; -- DDL commands
alter table amazon_orders alter column order_id date; -- DDL data type should be Compatible 
alter table amazon_orders alter column product_name varchar(20); -- DDL data type should be Compatible 



-- delete a table 
--drop table amazon_orders;

-- DML -> Data Manupulation Language .

insert into amazon_orders values(1,'2023-01-06','Amul Milk',32.50,'UPI');
insert into amazon_orders values(2,'2023-01-04','Mother Diary Milk',38.57,'Wallet');

insert into amazon_orders values(3,'2023-01-12','Lays Chips',32.50,'UPI');
insert into amazon_orders values(4,'2023-01-23','Peener Butter',38.57,'COD');

-- To dele te Data .
delete from amazon_orders;

-- DQL - > Data Quering Language 

-- All tables 
select * from amazon_orders;
-- Limiting colums or Selecting specfic colums 
select product_name,order_date from amazon_orders;
-- Limiting rows
select top 2 * from amazon_orders;
-- Data sorting 
select * from amazon_orders
order by order_date desc ; -- Default aesc ; {Assendring Order}
select * from amazon_orders
order by product_name ;


/*
integer : 1,2,3,4, .....
date : '2020-11-01 ' YYYY-MM-DD
varchar(length) : 'baby milk '
decimal(5 ,2) : 234.45

*/