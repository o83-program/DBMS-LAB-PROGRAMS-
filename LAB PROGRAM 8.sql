create database studentenrollment;
use studentenrollment;
create table student (regno varchar(20), sname varchar(20), major varchar(20),bdate date,primary key(regno));
insert into student values('10','manish','cse','2002-03-09');
insert into student values('20','sreenath','cse','2003-03-15');
insert into student values('30','varun','ise','2002-08-25');
insert into student values('40','chahal','ise','2002-03-18');
insert into student values('50','mike','ece','2001-01-25');
create table course (courseno int(20),cname varchar(20),dept varchar(20),primary key(courseno));
insert into course values('100','dbms','cse');
insert into course values('200','ada','ise');
insert into course values('300','tfcs','cse');
insert into course values('400','la','ise');
insert into course values('500','os','ise');

create table enroll(regno varchar(20),courseno int(20),sem int(3),marks int(20),foreign key(regno)references student(regno),foreign key(courseno)references course(courseno),primary key(regno,courseno));
insert into enroll values('10','100','4','55');
insert into enroll values('20','200','4','85');
insert into enroll values('30','300','3','99');
insert into enroll values('40','400','5','49');
insert into enroll values('50','500','3','79');

create table ttext(bookisbn int(20),booktitle varchar(20),pub varchar(20),author varchar(20),primary key(bookisbn));
insert into ttext values('1000','concepts of dbms','pearson','sam');
insert into ttext values('2000','concepts of os','pearson','matern');
insert into ttext values('3000','concepts of ada','pearson','rajkumar');
insert into ttext values('4000','concepts of la','pearson','mikenson');
insert into ttext values('5000','concepts of tfcs','pearson','sam');

create table bookadoption(courseno int(20),sem int(3),bookisbn int(20),foreign key(courseno) references course(courseno),foreign key(bookisbn)references ttext(bookisbn),primary key(courseno,bookisbn));
 insert into bookadoption values('100','3','1000');
  insert into bookadoption values('200','3','2000');
   insert into bookadoption values('300','4','3000');
    insert into bookadoption values('400','5','4000');
     insert into bookadoption values('500','4','5000');
     
     insert into ttext values(6000,'core java','prentice hall','jay');
     insert into bookadoption values('600','3',6000);
     select*from ttext;