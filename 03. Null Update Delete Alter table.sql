/*
Null values
Update statement
Delete statement
Alter table
---Add column in existing table
---Modify/Alter column
---Alter table-Drop column
*/

show databases;
create database CUSTOMER;
# create customer_info table
USE CUSTOMER;
create table CUSTOMER_INFO(
ID INTEGER AUTO_INCREMENT,
FIRST_NAME VARCHAR(25),
LAST_NAME VARCHAR(25),
SALARY INTEGER,
PRIMARY KEY(ID)  # THAT MEANS IT WILL BE UNIQUE, iT WILL BE UNIQUELY IDENTIFY THE RECORDS IN THE TABLE
);

SELECT * FROM CUSTOMER_INFO;

# insert record into table
insert into customer_info(FIRST_NAME, LAST_NAME, SALARY)
values
('John', 'Abraham', 100),
('Amir', 'Khan', 120),
('Ravi', 'Teja', 200),
('Mahesh', 'Babu', 220),
('Hritik', 'Roshan', NULL);

select * from CUSTOMER_INFO where SALARY is NULL;
select * from CUSTOMER_INFO where SALARY is not NULL;

# SQL update statement to replace null values

update customer_info set salary = 250 where id = 5;
SELECT * FROM CUSTOMER_INFO;

# DELETE STATEMENT
delete from customer_info where id = 5;
SELECT * FROM CUSTOMER_INFO;

# ALTER TABLE
# 1. Add column in existing table
alter table customer_info add email varchar(25);
SELECT * FROM CUSTOMER_INFO;
alter table customer_info add dob date;
SELECT * FROM CUSTOMER_INFO;


## Alter table modify column
alter table customer_info modify dob year;
desc customer_info;

## Alter table to drop column
alter table customer_info drop column email;
SELECT * FROM CUSTOMER_INFO;