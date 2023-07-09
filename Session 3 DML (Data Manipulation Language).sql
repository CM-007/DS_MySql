/*
DML -(DATA MANIPULATION LANGUAE)
INSERT 
UPDATE 
DELETE
*/ 

#connection to data base
use hr;

#creating employees table
create table employees (empid int,name varchar(30),doj date);

#insert values into employe table
insert into employees values(1,'Renu','2023-07-06'); -- yyyy-mm-dd -by default 
insert into employees(name,empid,doj) values('R',5,current_date()); 

# select is use for display column values
select * from employees;
-- display name,doj column values 
select name,doj from employees;

insert into employees values (3,'Suraj');  -- error 
insert into employees(empid,name) values (3,'Suraj');
insert into employees values (4,'Suraj K',null);
-- insert multiple rows at a time
insert into employees values (5,'CM',current_date()),(6,'My',current_date());

-- ---------------------
#templorory disable
set sql_safe_updates=0;
-- ---------------------

#update previous values from table columns
update employees set empid=2 where name='renu';
update employees set name='Chetan' where empid >3;
update employees set name='Chetan',doj='2023-07-03' where name='Renu';
update employees set name='CVM' where name='Chetan' AND doj='2023-07-03';
update employees set name='Allen'; -- change all name to Allen
-- ------------------------------------------------------------
#delete
delete from employees where empid=2;
delete from employees; -- all rows delete


-- ------------------------
/*
TCL(TRANSACTION CONTROL LANGUAGE)
commit
rollback
savepoint
*/
-- ------------------------
#disable 
set autocommit =0; 
commit;


rollback;






/* 
now(); date time
current_date()
*/







describe employees;
show tables;








