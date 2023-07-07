-- creating own DB   
create database hr;
create database student;

#connection to hr DB
use hr;

#creating column 
#4096 maximum column in table
create table employees (empid int,name varchar(30),doj date);

#update column /add column 
alter table employees add phone_no char(10);
alter table employees add mail_id varchar(40);
alter table employees add salary int;

#adding multiple columns same time
#alter table employees add (mail_id varchar(40),salary int); 
#alter table employees add mail_id varchar(40), add salary int; 

describe employees;

/*
DDL (Data Defination Language)
create
alter
add
rename
drop
*/

# update data type of a column
alter table employees modify phone_no int;

# write querry to change the datatype pf name col to int and salary col to varchar:
alter table employees modify name int , modify salary varchar(10);

#change the name of column
alter table employees rename column empid to empno;

#remove the unwanted column 
alter table employees drop empno;
-- alter table employees drop column empno; -- column keyword is optional 
-- alter table employees drop empno,drop name;

#change table name
rename table employees to emp_info;

#delete the table in DB
drop table emp_info;

#show all tables with in the DB
show tables;


