-- Create new column donor address in donor table.

use blood_bank;

alter table donor add column donor_address varchar(255);