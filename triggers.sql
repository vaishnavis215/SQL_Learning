-- Triggers 
-- automatic log entry or data insertion int trigger table after actions performed on main working table

-- syntax
/* Create trigger trigger_name
before/after insert/update/delete
on table table_name
for each row
begin
----
----
end */

select * from employees;
-- create log trigger table
create table emp_log_table(log_id int primary key auto_increment,emp_id int ,action varchar(30),old_salary decimal(10,2),
new_salary decimal(10,2),updated_at datetime default current_timestamp);


-- create trigger
delimiter //
create trigger emp_insert_trigger
after insert on employees for each row 
begin
insert into emp_log_table(emp_id,action,old_salary,new_salary)
values(new.emp_id,"insert",NULL,New.salary);
end //

-- lets insert data on original table
insert into employees values(119,"mona",4,40000);
insert into employees values(120,"ria",2,50000);

-- now check trigger table
select * from emp_log_table;

-- update trigger
delimiter //
create trigger emp_update_trigger
after update on employees for each row 
begin
insert into emp_log_table(emp_id,action,old_salary,new_salary)
values(new.emp_id,"update",old.salary,New.salary);
end //
update employees set salary=60000 where emp_id=101;

-- delete trigger
delimiter //
create trigger emp_delete_trigger
after delete on employees for each row 
begin
insert into emp_log_table(emp_id,action,old_salary,new_salary)
values(old.emp_id,"delete",old.salary,old.salary);
end //

delete from employees where emp_id=120;

-- before update trigger
delimiter //
create trigger emp_update_before_trigger
before update on employees for each row 
begin
insert into emp_log_table(emp_id,action,old_salary,new_salary)
values(new.emp_id,"before_update",old.salary,New.salary);
end //
drop trigger emp_update_before_trigger;


-- before insert trigger 
delimiter //
create trigger before_insert_emp
before insert on employees 
for each row
begin
-- ensure salary is 100000
if new.salary<100000 then 
set new.salary=100000;
end if;
end//
insert into employees values(121,"jay",1,90000);

-- before update
delimiter //
create trigger before_update_trigger
before update on employees 
for each row
begin
-- ensure salary is 100000
if new.salary<60000 then 
set new.salary=old.salary;
end if;
end//

update employees set salary=20000 where emp_id=101;
update employees set salary=80000 where emp_id=119;
delimiter ;