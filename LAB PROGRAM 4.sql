create database student;
use student;
create table student(snum varchar(20),sname varchar(20),major varchar(20),level varchar(20),age int(20),primary key(snum));
insert into  student values('10','omar','cse','senior','20');
insert into  student values('15','vikas','ise','senior','19');
insert into student values('20','vishnu','ece','senior','21');
insert into student values('25','ibrahim','cse','junior','20');
insert into student values('30','owais','ece','junior','19');
select * from student;
create table faculty(fid varchar(20),fname varchar(20),dep_id varchar(20),primary key(fid));
insert into  faculty values('1001','Dr manjunath','100cse');
insert into  faculty values('1500','Dr selva kumar','100cse');
insert into faculty values('2042','Ashok','200ece');
insert into faculty values('2575','Nmaratha M','100cse');
insert into faculty values('3085','Malikarjuna','200ece');