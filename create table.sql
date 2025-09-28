use test;

create table emp(
emp_id int,
f_name varchar(20),
l_name varchar(20),
salary float,
address varchar(20),
joining_date date,
age tinyint,
birth_year year,
mobile_no varchar(30),
gender enum('male','female','other'),
project set('p-1','p-2','p-3','p-4')
);

desc emp;
insert into emp(emp_id,f_name,l_name,salary,address,joining_date,age,birth_year,mobile_no,gender,project) values(1,'Radha','Suryawanshi',30000,'pune','2025-12-12',23,'2002',7057983628,'female','p-1');

