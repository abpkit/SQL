CREATE DATABASE student;
use student;
create table personal(
id INT,
name VARCHAR(50),
birth_date DATE,
phone VARCHAR(12),
gender VARCHAR(1)
);

CREATE TABLE product (
    prod_id INT,
    prod_name VARCHAR(50),
    prod_company VARCHAR(50),
    price INT
);

INSERT INTO personal (id, name, birth_date, phone, gender)
VALUES (1, "ABHI", "1993-12-16", "7620812981", "M");
