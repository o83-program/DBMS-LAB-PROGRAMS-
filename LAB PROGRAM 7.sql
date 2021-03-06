create database book;
use book;
create table author(authorid int(20),aname varchar(20),city varchar(20),country varchar(20),primary key(authorid,aname));
insert into author values('10','sam','bangalore','india');
insert into author values('20','omar','torontto','canada');
insert into author values('30','manish','mysore','india');
insert into author values('40','ellie','mirzapur','india');
insert into author values('50','joel','seattle','us');
select*from author;
create table publisher(pubid int(20),pname varchar(20),city varchar(20),country varchar(20),primary key(pubid));
insert into publisher values('60','mike','bangalore','india');
insert into publisher values('70','tom','bangalore','india');
insert into publisher values('80','jack','badlapur','india');
insert into publisher values('90','tommie','chandigarh','india');
insert into publisher values('100','micheal','mangalore','india');

desc catalog;
drop table catalog;
create table category(categoryid int(20),descrip varchar(20),primary key(categoryid));
insert into category values('1000','murder');
insert into category values('2000','fiction');
insert into category values('3000','action');
insert into category values('4000','romance');
insert into category values('5000','action');

create table catalog(bookid int(20),title varchar(20),authorid int(20),pubid int(20),categoryid int(20),yyear year,price int(20),primary key(bookid),foreign key(authorid)references author(authorid),foreign key(pubid)references publisher(pubid),foreign key(categoryid) references category(categoryid));
insert into catalog values('100','shrek','10','60','1000','2018','6257');
insert into catalog values('200','evil eye','20','70','2000','2017','6247');
insert into catalog values('300','race','30','80','3000','2008','3257');
insert into catalog values('400','my life','40','90','4000','2020','1741');
insert into catalog values('500','the sight','50','100','5000','2011','1257');
create table orderdetails(orderno int(20),bookid int(20),quantity int(20),foreign key(bookid)references catalog(bookid));
insert into orderdetails values('1','100','2');
insert into orderdetails values('3','200','3');
insert into orderdetails values('5','300','1');
insert into orderdetails values('2','400','5');
insert into orderdetails values('2','500','6');