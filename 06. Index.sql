/*
The indexes are used to retrieve the data from the database more quickly than others.
THe user can not see indexes, and they are just used to speed up searches.
*Updating table with indexes takes lot of time than updating the table without indexing .
It is because Indexes also need an update.
So create indexes on those column that will be frequently searched against.
*/

use customer;
show tables;
select * from students;
create index index_city_name                # Here name of index is index_city_name
on students(age);

desc students;


# COMBINING MULTIPLE COLUMNS
create index index_age_first_name
on students(age,first_name);


# TO DROP THE INDEX
alter table students
drop index index_age_first_name;

desc students