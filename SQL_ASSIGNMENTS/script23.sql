-- Rename donor address column from donor table to permanent_address.
use blood_bank;

alter table donor rename column donor_address to permenant_address;