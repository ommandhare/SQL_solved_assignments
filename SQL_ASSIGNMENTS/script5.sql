-- Create family_dtl table consisting family details in family database.
-- (Which will show first_name, middle_name, last_name, age, relation_with_yourself)

use family;
create database family;

create table family_dtl(
first_name varchar(40),
middle_name varchar(40),
last_name varchar(40),
age int,
relation_with_yourself varchar(40)
);


