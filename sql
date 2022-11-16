use university;
create table boat(b_id  int primary key,bname varchar(30),colour varchar(30));
insert into boat values(101,"interlake","blue");
insert into boat values(102,"interlake","red");
insert into boat values(103,"clipper","green");
insert into boat values(104,"marine","red");
select*from boat;
create table workday(s_id int ,b_id int,work_date date,foreign key(s_id) references sailors(s_id),foreign key(b_id) references boat(b_id));
insert into workday values(22,"101","1998-10-10");
insert into workday values(22,"102","1998-10-10");
insert into workday values(22,"103","1998-10-8");
insert into workday values(22,"104","1998-10-7");
insert into workday values(31,"102","1998-10-11");
insert into workday values(31,"103","1998-6-11");
insert into workday values(31,"104","1998-12-10");
insert into workday values(64,"101","1998-5-9");
insert into workday values(64,"102","1998-6-10");
insert into workday values(74,"103","1998-8-9");
select*from workday;
drop table workday;

create table sailors(s_id  int primary key,sname varchar (30),rating int,age float);
insert into sailors values(22,"dustin",7,45.0);
insert into sailors values(29,"brutus",1,33.0);
insert into sailors values(31,"lubber",8,55.5);
insert into sailors values(32,"andy",8,25.5);
insert into sailors values(58,"horatio",10,35.0);
insert into sailors values(64,"horation",7,35.0);
insert into sailors values(71,"zorab",10,16.0);
insert into sailors values(74,"horatin",9,35.0);
insert into sailors values(85,"art",3,25.5);
insert into sailors values(95,"Bob",3,63.5);
select *from sailors;
select sname,age from sailors;
select * from sailors where rating>7;
select * from workday where b_id=103;
select s_id from workday where b_id='red';
SELECT *FROM sailors where age;
select sname from sailors where s_id=any(select s_id from workday where b_id=103);
select distinct s_id from workday where b_id=any(select b_id from boat where colour='red');













