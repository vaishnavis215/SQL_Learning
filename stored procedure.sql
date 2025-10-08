-- Stored Procedure

Delimiter //
create procedure All_Emp_salary()
begin
 select salary from employee;
 end //
 

call All_Emp_salary();
select * from employees;
-- Stored Procedure with input parameter
delimiter //
create procedure Emp_Info(in employee_id int)
begin
select * from employees where emp_id=employee_id;
end //

call Emp_Info(105);

-- create a procedure based on department id as input
delimiter //
create procedure Emp_Info_dept(in dep_id int)
begin
select * from employees where dept_id=dep_id;
end //

delimiter //
create procedure Emp_Info_dept1(in dep_id int)
begin
select * from employees where dept_id=dep_id;
end //
 
-- user defined function using stored procedure 

delimiter //
create procedure Area_of_circle(in radius float, out area decimal(10,2) )
begin 
set area=pi() *radius*radius;
-- set area=pi() * pow(radius,2);
end //

call Area_of_circle(5,@area);

select @area as area_of_circle;

-- create procedure fro 
-- perimeter of circle
-- areao of square
-- perimiter of rectangle
 
 delimiter //
create procedure Peremeter_of_circle (in radius float, out peremeter decimal(5,2) )
begin 
set peremeter=2*pi() *radius;
end //

call Peremeter_of_circle(10,@pere);
select @peremeter as peremeter_of_circle;

 delimiter //
create procedure Peremeter_of_rect(in length float, in width float,out peremeter decimal(10,2) )
begin 
set peremeter=2*(length+width);
end //

call Peremeter_of_rect(10,10,@perem);
select @perem as Peremeter_of_rectangle;


 delimiter //
create procedure area_of_square (in side int, out area int )
begin 
set area=side*side;
end //

call area_of_square(10,@area_of_squar);
select @area_of_squar as area_of_square;



