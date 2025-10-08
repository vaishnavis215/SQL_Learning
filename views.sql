-- views:- Views are temporary result of combination of two or more table.
-- It does't acquires storage space

select e.emp_id,e.emp_name,d.dept_name,e.salary from employees e JOIN departments d on e.dept_id=d.dept_id;

-- creating view
create view emp_info_view
as select e.emp_id,e.emp_name,d.dept_name,e.salary from employees e JOIN departments d on e.dept_id=d.dept_id;

select * from emp_info_view;

drop view emp_info;

-- retrive th information and emp_name of employee wheree you can check employees with changing salary
create view emp_salary_view1 as 
select e.emp_id,e.emp_name,d.dept_name,e.salary 
from employees e JOIN
 departments d on e.dept_id=d.dept_id
 where salary>=30000;
 
 -- show employees earning with changing salaries
 select * from emp_salary_view where salary=emp_info_viewemp_info_viewemp_info_view61000;
 
 
 alter view emp_salary_view1 as
 select e.emp_id,e.emp_name,d.dept_name,e.salary 
from employees e JOIN
 departments d on e.dept_id=d.dept_id
 where salary>=40000;
 
 select * from emp_salary_view1;
 select emp_name,salary from employees where salary>
 (select round(avg(salary),2) from employees);
 
 select * from employees;
 
 -- find the Third highest salary 
 select distinct max(salary)as Third_highest_salary from employees where salary<(select max(salary) from employees where salary <(select max(salary) from employees));
 
 
 -- using subquries find employees name, and their salary working in IT department
 
 select emp_name,salary from employees where dept_id in 
 (select dept_id from departments where dept_name='it');
 
 select * from departments;
 
 -- how to optimize slow running queries
