-- Is not case sensitive language-- 
show schemas;


-- create data base {DB}
create database firstdb;
show databases;


-- drop DB
drop database firstdb;


-- create a tables in DB called students
use firstdb;
create table students(SNo int,SName varchar(30),Age int,Course varchar(30));
show tables;
