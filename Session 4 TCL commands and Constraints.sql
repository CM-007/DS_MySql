/*
#disable 
set autocommit =0; 
TCL(TRANSACTION CONTROL LANGUAGE)
commit
rollback
savepoint
*/

use hr;
insert into employees values(1,'R','2023-07-06'); -- yyyy-mm-dd -by default 
savepoint a;
insert into employees values(1,'Rm','2023-07-06'); -- yyyy-mm-dd -by default 

insert into employees values(11,'Rm','2023-07-06'); -- yyyy-mm-dd -by default 

set autocommit = 0;
rollback to savepoint a;
select * from employees;





