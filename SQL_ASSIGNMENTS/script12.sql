-- Add DOB column after last_name column.

use family;

alter table family_dtl add column DOB date after last_name;
select * from family_dtl;