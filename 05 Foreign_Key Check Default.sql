/*
4. Foreign key
5. check constraint
6. default constraint
*/

# Foreign key is to link 2 tables together it is also called as refencing key.
#  Relationship between 2 table matches the primary key in 1 of the table with foreign key in the 2nd table. 

use customer;
create table person(
id int not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
age int,
salary int,
primary key(id)
);
desc person;

show tables;

create table department(
id int not null,
department_id int not null,
department_name varchar(25) not null,
primary key(department_id),
constraint foreign_key_persondepartment foreign key(id) references person(id)
);
desc department;             # id is showing mul

/*
Another method is by altering
alter table department
add foreign key(id) references person(id)
*/

# 2. CHECK CONSTRAINT
create table salary(
id int not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
age int,
salary int,
primary key(id),
check(salary<200)
);

desc salary;

insert into salary values(1, 'Anil', 'Kapoor', 31, 150);  # here if salary > 200 then it shows error.
select * from salary;
drop table salary;

## 3. DEFAULT CONSTRAINT
# by default it should take some values
create table salary(
id int not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
city_name varchar(30) default 'Aagra'     # if we do not give city name while inserting,it will take it as Aagra. 
);

desc salary; 

# TO REMOVE DEAFAULT CONSTRAINT
alter table salary
alter city_name drop default