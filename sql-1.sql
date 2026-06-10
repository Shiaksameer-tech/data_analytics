create database ddl_commands;

use ddl_commands;

create table employees
(
Frist_name varchar(30),
Last_name varchar(30),
Title varchar(20),
Salary int
);
desc employees;


alter table employees add gender varchar(1);
alter table employees add random varchar(1);
alter table employees drop column random;
alter table employees drop column gender;

create table student_new
(
StudentId int primary key,
StudentName varchar(40) not null,
Age int,
Grades varchar(1)
);

desc  student_new;

alter table 
student_new 
add email
varchar(30);

alter table 
student_new
add Student_address
varchar(30);

alter table
student_new
drop column Student_address;

rename table student_new to std_new;
desc  std_new;

create table customers
(
customer_id int,
customer_name varchar(30),
address varchar(40),
email varchar(30)
);
alter table customers add primary key(customer_id);

create table orders
(
customer_id int,
order_id int,
order_type varchar(20),
order_status varchar(40),
primary key(order_id),
foreign key(customer_id) references customers(customer_id)
);

insert into customers 
(customer_id,customer_name,address,email)
values
(01,"sameer","tirupathi","sam12@gmail.com"),
(02,"tom","chennai","tom1@gmail.com"),
(03,"sandy","pondi","sandy12@gmail.com");
select * from customers;

insert into orders
(customer_id,order_id,order_type,order_status)
values
(01,28042005,"tirupathi","delivered"),
(02,300420005,"chennai","pending"),
(03,02032005,"food","delivered");

insert into orders
values
(5,105,'Mouse','Pending');

select * from
orders
where customer_id = 1;

create table emp_new
(
frist_name varchar(20),
last_name varchar(20),
ID int not null,
age int not null,
city varchar(30),
state varchar(20),
primary key(ID)
);
desc emp_new;

insert into emp_new
(frist_name,last_name,ID,age,city,state)
values
('sameer','shaik',28042005,28,'tirupathi','AP'),
('babai','bob',07072006,27,'kadapa','AP'),
('ubaid','ubbu',17052005,28,'kamalapuram','AP');

select * from emp_new;

select frist_name as fristname,last_name as lastname from emp_new where ID=28042005;
select count(*) as Record_count from emp_new;
select count(ID) from emp_new;
insert into emp_new
(frist_name,last_name,ID,age,city,state)
values
('vikram','vicky',28042006,28,'tirupathi','AP'),
('nakshtra','shaik',07072007,27,'mpl','AP'),
('kabhir','sharma',17052008,28,'tirupathi','AP');

select * from emp_new where age>=25;
select * from emp_new where  frist_name like 'v%';
select last_name from emp_new where  last_name like 's%';

select * from emp_new  where age in(1,27);
select frist_name,last_name,age from emp_new where city like 't%';