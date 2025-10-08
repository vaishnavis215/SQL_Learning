create table  student2
( student_id INT Primary Key ,
student_name  VARCHAR(50) NOT NULL , age  INT, CHECK(age >= 18), email 
 VARCHAR(100) UNIQUE) ;
 
 create table dept( dept_id INT Primary Key , dept_name  VARCHAR(50)
 NOT NULL);
 
 -- adding rows 10 in student
 insert into student2 values
 (2,'vaidehi',20,'vaidehi@gmail.com'),(3,'vihan',22,'vihan@gmail.com'),(4,'varsha',20,'varsha@gmail.com'),
 (5,'vaishnavi',20,'vaishnavi@gmail.com'),(6,'vishal',21,'vishal@gmail.com'),(7,'ved',22,'ved@gmail.com'),
 (8,'vedant',21,'vedant@gmail.com'),(9,'vidya',22,'vidya@gmail.com'),(10,'veda',23,'veda@gmail.com');
 
 -- Adding 5 rows in dept table
 insert into dept values(1,'Arts'),(2,'Cs'),(3,'BCA'),(4,'Commers'),(5,'Science');
 
 --  Add a column phone_number in Students, with datatype CHAR(10) and make it NOT NULL.
 alter table student2 add column Phone_number char(10) not null;
  alter table student2 add column dept_id int;

  -- Try inserting a student with a duplicate email → what happens?
  insert into student2 values(11,'vivek',23,'vidya@gmail.com','7057894553'); 
  -- Error-- Duplicate entry 'vidya@gmail.com' for key 'student2.email'	0.016 sec

-- Alter the Students table to add a foreign key dept_id referencing Departments(dept_id)
alter table student2 add constraint fk_depts foreign key (dept_id) references dept(dept_id);

--  Try inserting a student with a non-existing dept_id → what happens?
  insert into student2 values(11,'vivek',23,'vivek@gmail.com','7057894553',6);
  
  -- Cannot add or update a child row: a foreign key constraint fails (`test`.`student2`, CONSTRAINT `fk_depts` 
  -- FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`))	
  
  -- Delete a department that has students → what happens and why?
  
delete from dept;

insert into student2(dept_id)  values(1);
 -- Update a department ID in Departments → what happens to Students table?
update dept set dept_id=6 where dept_id=5;
-- Cannot delete or update a parent row: a foreign key constraint fails
 -- (`test`.`student2`, CONSTRAINT `fk_depts` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`))
 
  
  -- Display the list of all students ordered by age in ascending order.
  select * from student2 order by age;
  
  
