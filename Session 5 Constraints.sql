use hr ;
drop table employees;

# 1> ######################## on delete set null /on update cascade #################
# create table department (Parent)
CREATE TABLE departments (
    deptno INT PRIMARY KEY,
    dname VARCHAR(22) NOT NULL
);

# create table employees(Child)
CREATE TABLE employees (
    empno INT PRIMARY KEY,
    name VARCHAR(22) NOT NULL,
    salary INT CHECK (salary > 0),
    deptid INT,
    FOREIGN KEY (deptid)
        REFERENCES departments (deptno)
        ON DELETE SET NULL ON UPDATE CASCADE
);
#inserting value 
insert into departments values(10,'sales'),(20,'Hr');

insert into employees values(101,'Renu',1000,20),(102,'Alex',4000,10);
insert into employees values(103,'Allen',33400,20);

#status of the table
select * from employees;

#Delete querry
delete from departments where deptno=10;

#Update querry
update departments set deptno=33 where deptno=20;
-- ---------------------------------------------------------------------------

# 2> ######################## on delete  cascade/on update set null #################
 
 drop table departments;
 drop table employess;
 
 # create table department (Parent)
CREATE TABLE departments (
    deptno INT PRIMARY KEY,
    dname VARCHAR(22) NOT NULL
);

# create table employees(Child)
CREATE TABLE employees (
    empno INT PRIMARY KEY,
    name VARCHAR(22) NOT NULL,
    salary INT CHECK (salary > 0),
    deptid INT,
    FOREIGN KEY (deptid)
        REFERENCES departments (deptno)
        ON DELETE CASCADE ON UPDATE SET NULL
);
#inserting value 
insert into departments values(10,'sales'),(20,'Hr');

insert into employees values(101,'Renu',1000,20),(102,'Alex',4000,10),(103,'Allen',33400,20);

#status of the table
select * from employees;

#Delete querry
delete from departments where deptno=10;

#Update querry
update departments set deptno=33 where deptno=20;
-- ---------------------------------------------------------------------------
