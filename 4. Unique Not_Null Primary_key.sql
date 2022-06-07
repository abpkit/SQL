/*
Constraints are to specify any rule for data in table
1. NOT NULL
2. UNIQUE
3. PRIMARY KEY

*/

use customer;
CREATE TABLE students(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int
);

# To see schema of the students
desc students;                # we have used constraint NOT NULL.
# Now if we want to add constraint NOT NULL for age then we will alter the table
alter table students modify age int not null;
desc students;

# 2. UNIQUE
create table person(
id int not null,
first_name varchar(25) not null,
last_name varchar(25) not null,
age int not null,
unique(id)
);

insert into person values(1, 'Abhi', 'Patil', 27);
select * from person;

insert into person values(2, 'Abhi1', 'Patil1', 27);
select * from person;
# If we use same id while inserting data then it will sshow error due constraint UNIQUE.
# we can use unique constraint at other columns also by 
alter table person
add unique(first_name);
desc person;

# To drop unique value
# for this we have to know how to index unique constraint
# we are creating constraint unique for 2 columns
alter table person
add constraint unique_constraint_person unique(age, first_name);
desc person;

# To drop constraint
alter table person
drop index unique_constraint_person;
desc person;


-- primary key
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint primary_key_constraint primary key (id, last_name)
);
desc person1;

# To drop primary key
alter table person1
drop primary key;
desc person1;

# If you want primary key for single column
alter table person1
add primary key(id);
desc person1