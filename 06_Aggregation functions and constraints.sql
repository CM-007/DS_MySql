
use firstdb;

-- Task: Fetch the top 10 records by salary value
select * from myemp order by salary desc limit 10;
-- Task: Fetch the record after skipping top 3 records.
select * from myemp order by salary desc limit 7 offset 3; -- skipping use offset clause
-- Distinct
select distinct dep_id,mgr_id from myemp;
-- Task: Fetch the record from myemp salary between 15k and 20k
select * from myemp where salary between 15000 and 20000;
-- Task: Fetch the record from myemp where dep_id 90 
select * from myemp where dep_id = 90;
-- Task: Fetch the record from myemp where 90 and 100
select * from myemp where dep_id = 90 or dep_id = 100;
select * from myemp where dep_id in (90,100);
-- Task: Fetch the record from myemp where 90 or 100 and salary > 8K
select * from myemp where dep_id in (90,100) and salary > 8000;
-- Task: Fetch the record from myemp where dep_id not 90 
select * from myemp where dep_id <> 90;
select * from myemp where salary not between 15000 and 20000;
-- Task: fetch the depid is not 80,50,60
select * from myemp where dep_id not in (80,50,60);

-- *** Aggregation function : sum(), avg(),max(),min(),count() ***
select sum(salary) from myemp;
select round(avg(salary),2) from myemp;
select min(salary),max(salary),avg(salary),sum(salary) from myemp;
select count(*) from myemp;
select count(*) from myemp where dep_id = 60;
select count(distinct dep_id) from myemp; 
select count(distinct hire_date) from myemp; 

select * from myemp;
select avg(salary),dep_id from myemp group by dep_id order by avg(salary) Desc;
select sum(salary) as Total,avg(salary) as "Avrage Salary",dep_id from myemp group by dep_id;

-- *** Constraints ***

