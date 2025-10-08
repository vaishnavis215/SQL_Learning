-- while loop
delimiter //
create procedure count_while()
begin
declare num int default 1;
while num<=5 do
select num;
set num=num+1;
end while;
end //

call count_while();