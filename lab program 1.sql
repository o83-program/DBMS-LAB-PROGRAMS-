use insurance;
create table person(driver_id varchar(10),name varchar(29),address varchar(12),primary key(driver_id));

desc person;
insert into person values('cv100','omar','bangalore');
insert into person values('cv200','raj','bihar');
insert into person values('cv300','rahul','mysore');
insert into person values('cv400','om','delhi');
insert into person values('cv500','meher','goa');
desc person;
select * from person;
show tables;
create table 
drop table person;
create table person(driver_id varchar(10),name varchar(29),address varchar(12),primary key(driver_id));
insert into person values('cv100','omar','bangalore');
insert into person values('cv200','raj','bihar');
insert into person values('cv300','rahul','mysore');
insert into person values('cv400','om','delhi');
insert into person values('cv500','meher','goa');

create table car(reg_no varchar(10),model varchar(29),year varchar(12),primary key(reg_no));

insert into car values('rd111','toyota','2012');
insert into car values('rd112','mitsubishi','2011');
insert into car values('rd113','honda','2019');
insert into car values('rd114','lexus','2022');
insert into car values('rd115','nissan','2017');
show tables;
desc table car;
select * from car;
create table owns(driver_id varchar(10),reg_no varchar(10),primary key(driver_id, reg_no), foreign key(driver_id)references person(driver_id),foreign key(reg_no)references car(reg_no));
create table accident(report_num varchar(20),accident_date varchar(20),location varchar(20),primary key(report_num));
insert into accident values('rt001','10/3/21','bangalore');
insert into accident values('rt002','11/3/21','bihar');
insert into accident values('rt003','21/3/21','mysore');
insert into accident values('rt004','25/3/21','delhi');
insert into accident values('rt005','13/5/21','goa');
insert into accident values('rt006','18/5/21','kerela');
select*from accident;

insert into owns values('cv100','rd111');
insert into owns values('cv200','rd112');
insert into owns values('cv300','rd113');
insert into owns values('cv400','rd114');
insert into owns values('cv500','rd115');
select * from owns;

create table participated(driver_id varchar(10),reg_no varchar(10),report_num varchar(20),damage_amt varchar(15),primary key(driver_id,reg_no,report_num),foreign key(driver_id)references person(driver_id),foreign key(reg_no)references car(reg_no),foreign key(report_num)references accident(report_num));
insert into participated values('cv100','rd111','rt001','233');
insert into participated values('cv200','rd112','rt002','253');
insert into participated values('cv300','rd113','rt003','735');
insert into participated values('cv400','rd114','rt004','645');
insert into participated values('cv500','rd115','rt005','642');
desc participated;
select * from participated;
update participated set damage_amt=25000 where reg_no='rd111'and report_num='rt001';

select count(report_num) from car a,participated b where a.reg_no=b.reg_no and model='nissan';



