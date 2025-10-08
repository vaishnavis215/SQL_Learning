CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    age INT
);

INSERT INTO Employee (emp_id, emp_name, dept_id, salary, age) VALUES
(1, 'Ali', 1, 50000, 28),
(2, 'Beck', 2, 60000, 32),
(3, 'Charlie', 1, 55000, 30),
(4, 'Dinesh', 3, 70000, 40),
(5, 'Evara', 2, 65000, 35),
(6, 'Funny', 3, 72000, 38),
(7, 'Ganu', 1, 52000, 26),
(8, 'Hanu', 2, 58000, 29),
(9, 'meenu', 3, 71000, 42),
(10, 'Jacky', 1, 53000, 31);



CREATE TABLE Department1(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO Department1 (dept_id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'Finance', 'London'),
(3, 'IT', 'San Francisco');




