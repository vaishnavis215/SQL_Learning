
select * from products;
update products set stock=1000 
where `internal id`=4;
update products set price=price+(price*10/100) 
where `index`=42;
update products set price=price*1.10 
where `index`=85;
delete from products where `index`=10;
