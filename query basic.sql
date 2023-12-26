create database rk;
use rk;

create table students(
id int,
name varchar(20),
email varchar(20),
phone varchar(20)
);

select * from students;

insert into students(id,name,email,phone) 
values (1,'Rabia','rk@gmail.com','067543-23456');

insert into students(id,name,email,phone) 
values (2,'Tooba','shing@gmail.com','0634543-23456');

insert into students(id,name,email,phone) 
values (3,'Alishba','lizag@gmail.com','0634543-23456');

insert into students(id,name,email,phone) 
values (4,'hamza','hamzag@gmail.com','063543-26');

alter table students add city varchar(255);
update students set city='karachi';

delete from students where id=4;

create table employee(
id int identity not null,
name varchar(255) not null,
email varchar(255) not null unique,
city varchar(255)not null
);

select * from employee;
insert into employee(name,email,city) values('Rabia','rk123@gmail.com','Karachi'),('Tayyaba','tayaba73@gmail.com','Lahore'),
('Alishba','liza23@gmail.com','Karachi'), ('Tooba','tooba32@gmail.com','Karachi'),  ('Fiza','fiza13@gmail.com','Karachi');
alter table employee add destination varchar(255);
update employee set destination='Manager' where id =1;
update employee set destination='Programmer' where id =2;
update employee set destination='Clerk' where id =3;
update employee set destination='Senior employee' where id =4;
update employee set destination='junior employee' where id =5;
alter table employee add salary int , ph#no varchar(255);
update employee set salary=25000;
update employee set ph#no='134-24-22' where id=1;
update employee set ph#no='1346324-22' where id=2;
update employee set ph#no='13424-24-22' where id=3;
update employee set ph#no='134-2423622' where id=4;
update employee set ph#no='134-2422' where id=5;
alter table employee drop column ph#no;
drop table employee;