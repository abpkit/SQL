/*
1. CREATE DATABASES
2. DROP DATABASES
3. CREATE TABLE
4. INSERT INTO TABLE
5. DROP TABLE
*/

create database customers;
show databases;
drop database customers;
create database customers;

# CREATE A TABLE
use customers;
create table customer_info(id integer, first_name varchar(10), last_name varchar(10));
show tables;

select * from customer_info;




insert into customer_info(id, first_name, last_name)
values(1, 'Abhijit', 'Patil');
select * from customer_info;

insert into customer_info(id, first_name, last_name)
values(1, 'Sachin', 'patel');
select * from customer_info;

drop table customer_info;

show tables;

drop database customers;
show databases
