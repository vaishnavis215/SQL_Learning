
select * from customers;

select * from customers where contactLastName='king';

explain select * from customers where contactLastName='Brown';

-- create index
create index idx_contact_lastname on customers(contactLastName);

explain select * from customers where country='usa';
--

-- multi column index
create index idx_country_city on customers(country,city);

create index idx_contact_country on customers(country);

