create database banking;
use banking;
create table branch(branch_name varchar(20),branch_city varchar(30),assets REAL,primary key(branch_name));
insert into branch values('sbi chamrajpet','bangalore','50000');
insert into branch values('sbi residency road','uttar pradesh','10000');
insert into branch values('sbi shivaji road','bombay','20000');
insert into branch values('sbi parliment road','delhi','10000');
insert into branch values('sbi jantarmantar','kerela','20000');
commit;
select*from branch;
drop branch;
delete from branch where branch_name in('2','3','4','5','6');

create table accounts(
acc_no int,branch_name varchar(20),balance REAL,primary key(acc_no),foreign key(branch_name)references branch(branch_name));
insert into accounts values('2','sbi chamrajpet','14000');
insert into accounts values('3','sbi residency road','15000');
insert into accounts values('4','sbi shivaji road','16000');
insert into accounts values('5','sbi parliment road','17000');
insert into accounts values('6','sbi jantarmantar','18000');
select*from accounts;

create table loan(loan_no int,branch_name varchar(20),amount real,foreign key(branch_name)references branch(branch_name) on delete cascade);
insert into loan values('1','sbi chamrajpet','1000');
insert into loan values('2','sbi residency road','2000');
insert into loan values('3','sbi shivaji road','3000');
insert into loan values('4','sbi parliment road','4000');
insert into loan values('5','sbi jantarmantar','5000');
select*from loan;

create table bankcustomer(customer_name varchar(20),customer_street varchar(20),city varchar(20),primary key(customer_name));
insert into bankcustomer values('omar','bull temple road','bangalore');
insert into bankcustomer values('ritessh','bannergatta','bangalore');
insert into bankcustomer values('rahul','shivaginagar','bangalore');
insert into bankcustomer values('sam','btm layout','bangalore');
insert into bankcustomer values('paresh','gurrappanpalya','bangalore');
select*from bankcustomer;
create table depositer(customer_name varchar(20),acc_no int,primary key(customer_name,acc_no),foreign key(customer_name)references bankcustomer(customer_name),foreign key(acc_no)references accounts(acc_no) on delete cascade);
insert into depositer values('omar','2');
insert into depositer values('ritessh','3');
insert into depositer values('rahul','4');
insert into depositer values('sam','5');
insert into depositer values('paresh','6');
select*from depositer;
drop table depositer;
delete from accounts where branch_name in (select branch_name from branch where branch_city='bangalore');
update bankcustomer set city='delhi' where customer_name='paresh'; 


