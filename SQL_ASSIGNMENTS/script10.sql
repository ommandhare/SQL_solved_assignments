-- Create table donor in blood_bank database.
-- (donor no,first name,last name,blood group,contact no,latest date of donation).

create database blood_bank;
use blood_bank;

Create table donor(
donor_no int,
first_name varchar(255),
last_name varchar(255),
blood_group varchar(255),
contact_no int,
latest_date_of_donation date
);

