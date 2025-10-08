drop table employees;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2)   -- Added salary column
);

INSERT INTO Employees (emp_id, emp_name, dept_id, salary) VALUES
(101, 'Amey', 1, 50000),
(102, 'bran', 2, 60000),
(103, 'Charlie', 3, 55000),
(104, 'Don', 3, 58000),
(105, 'Era', 4, 52000),
(106, 'Frank', 5, 62000),
(107, 'Guru', 2, 61000),
(108, 'Hannah', 1, 53000),
(109, 'Ian', NULL, 49000),
(110, 'Jack', 3, 57000),
(111, 'Kathy', 4, 54000),
(112, 'Leo', 5, 60000),
(113, 'Mona', 6, 50000),
(114, 'Nina', NULL, 48000),
(115, 'Oscar', 7, 55000);


select * from employees;

select * from departments;
 

select e.emp_name ,d.dept_name from employees e CROSS JOIN departments d limit 5;
select e1.emp_name as employee_1,e2.emp_name as emplopyee_2,e1.salary as employee1_salary,e2.salary as employee2_salary
from employees e1
join employees e2
on e1.salary>e2.salary
limit 10;
-- lets introduce two keywords- least greatest
select distinct least(e1.emp_name,e2.emp_name)as employee_1 , 
greatest(e1.emp_name,e2.emp_name) as employee_2,
e1.dept_id 
from employees e1
join employees e2
on e1.dept_id=e2.dept_id
and e1.emp_id <> e2.emp_id
;








 
 