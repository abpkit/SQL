/*
VIEWS is a virtual table based on the result set of an SQL query.
*/
use customer;
create table teacher(
teacher_id int auto_increment,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int,
primary key(teacher_id)
);

select * from teacher;
insert into teacher values(1, 'Ram', 'Thakur', 28),
(2, 'Vijay', 'Singh', 35),
(3, 'Raj', 'Kumar', 43);

create table department(
teacher_id int auto_increment,
department_name varchar(10) not null,
foreign key (teacher_id) references teacher(teacher_id)
);

desc department;

insert into department values(1, 'Civil'),
(2, 'E n TC'),
(3, 'Mech.');

select * from department;
select * from teacher;


select first_name, last_name, age from teacher inner join department
using(teacher_id);

create view teacher_info as 
select first_name, last_name, age from teacher inner join department
using(teacher_id);

select * from teacher_info;      # here we can execute same table by calling only 'techer_info' as view.