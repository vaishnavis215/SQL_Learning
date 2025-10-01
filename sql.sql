-- stored procedure with if else statement

-- if

-- if statement with stored procedure
delimiter //
create procedure Salary_category3(in id_ int,out category varchar(50))
begin
declare emp_sal decimal(10,2);
select salary into emp_sal from employees where emp_id=id_;
if salary>51000 then 
set category="High salary";
end if;
end //

call Salary_category2(102,@category);
select @category as sal_cat;


DELIMITER //

CREATE PROCEDURE Salary_category4(IN id_ INT, OUT category VARCHAR(50))
BEGIN
    DECLARE emp_sal DECIMAL(10,2);

    SELECT salary 
    INTO emp_sal 
    FROM employees 
    WHERE emp_id = id_;

    IF emp_sal > 51000 THEN
        SET category = 'High salary';
    ELSEIF emp_sal BETWEEN 30000 AND 51000 THEN
        SET category = 'Medium salary';
    ELSE
        SET category = 'Low salary';
    END IF;
END //
call Salary_category4(105,@category);
select @category as sal_cat;



