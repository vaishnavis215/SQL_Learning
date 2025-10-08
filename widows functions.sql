desc employees;
select * from employees;
insert into employees values(118,'jon',3,49000);

-- Dense_rank
select emp_name,dept_id,salary,dense_rank() over (order by salary desc)rank_in_company from employees;

-- Rank
select emp_name,dept_id,salary,rank() over (order by salary desc)rank_in_company from employees;

-- ntile 
select emp_name,salary ,ntile(4) over (order by salary desc) as salary_group from employees;

-- lag function
select emp_name,salary ,lag(salary,2) over (order by salary desc) as pre_salary from employees;


-- running total 
select emp_name,dept_id,salary,sum(salary) over ( partition by dept_id order  by salary )cumulative_sum from employees;

-- lead
select emp_name,salary ,lead(salary,1) over (order by salary desc) as pre_salary from employees;
