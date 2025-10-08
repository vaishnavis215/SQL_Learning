select * from organizations;

-- like operator use for pattern matching

-- companies name starting with latter a 

select name,country from organizations where name like 'a%';

-- companies name end with a
select name,country from organizations where name like '%a';

-- conpanies name staring and ending witn a
select name,country from organizations where name like 'a%a';

-- list the companies who has 6 letter name.... _ define length 
select name,country from organizations where name like '____________';

-- copmanies where name starts with k and have 7 letters
select name,country from organizations where name like 'k______';


-- companies name ending with ltd
select name,country from organizations where name like '%ltd';

-- companies name where 2nd letter is e
select name,country from organizations where name like '_e%';







