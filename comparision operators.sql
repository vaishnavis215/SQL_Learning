select * from products;
alter table products 
drop column EAN;
-- arthmetic operators--
select 7+10;
select 7-10;
select 7*10;
select 7/10;
select 7%10;
select `index`,name,price from products;
select name,price as old_price, price+100 as new_price from products;

-- how much each product total values
select name,stock,price,price*stock as total_value from products;

-- comparision operators >,<,<=,>=,==,!=--
select name,price from products where price<100;

select name,price,stock from products where stock<200;

select name,price,stock from products where price =68;

select name,price,stock from products where price !=68;








