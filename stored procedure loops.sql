-- stored procedure with loops

delimiter //
create procedure Counts()
begin
declare counter int default 1;
loop_label:loop
select counter;
set counter=+1;
if counter>10 then 
leave loop_label;
end if;
end loop loop_label;
end //
delimiter ;
call Counts();

delimiter //
create procedure SumNaturalss1()
begin
declare sumN int default 1;
declare total int default 0;
loop_label:loop
select sumN;
set total=total+sumN;
set sumN=sumN+1;
if sumN>10 then 
leave loop_label;
end if;
end loop loop_label;
select total as result;
end //

call SumNaturalss1();

delimiter //
create procedure OddNum()
begin
declare odd int default 1;
create temporary table if not exists numOdd(num int);
loop_label:loop
insert into numOdd values(odd);
select odd;
set odd=odd+2;
if odd>10 then 
leave loop_label;
end if;
end loop loop_label;
select num as Odd_numbers from numOdd;
end //
call OddNum();

