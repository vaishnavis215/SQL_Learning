CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
use test;
INSERT INTO Departments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing'),
(5, 'Operations');







CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

INSERT INTO Employees (emp_id, emp_name, dept_id) VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 3),
(104, 'David', 3),
(105, 'Eve', 4),
(106, 'Frank', 5),
(107, 'Grace', 2),
(108, 'Hannah', 1),
(109, 'Ian', NULL),
(110, 'Jack', 3),
(111, 'Kathy', 4),
(112, 'Leo', 5),
(113, 'Mona', 6),
(114, 'Nina', NULL),
(115, 'Oscar', 7);

select * from Employees;

select * from Departments;

SELECT 
    e.emp_name, d.dept_name,d.dept_id
FROM
    employees e
        INNER JOIN
    departments d ON e.dept_id = d.dept_id;
    
SELECT 
    e.emp_name, d.dept_name,d.dept_id
FROM
    employees e
        LEFT JOIN
    departments d using (dept_id);    
    
SELECT 
    e.emp_name, d.dept_name,d.dept_id
FROM
    employees e
        RIGHT JOIN
    departments d using (dept_id);       
    