select * from employees;

-- string function

select firstName,char_length(firstname) as no_of_chars from employees;

select firstName,upper(firstname) as UPPER_char from employees;

select firstName,lower(firstname) as LOWER_char from employees;

select firstName,reverse(firstname) as reverse_char from employees;

-- concatination 
select employeenumber,firstname,concat(firstname,"  works as  ",jobtitle) as info from employees;

-- trim
select trim("               vaishnavi") as word ;  -- remove un-neccessary sapce

select ltrim("   mysql ") as word; 
select rtrim("   mysql ") as word; 

select substring("vaishnavi",1,2) as word;
select substring("vaishnavi",5,4) as word;  -- 5 start point ,4-how may characters want to print
select locate("vaishnvi",5) as letter;
select email,substring(email,locate("@",email)+1 )as domain  from employees;
select email,substring(email,1,locate("@",email)-1 )as domain  from employees;


