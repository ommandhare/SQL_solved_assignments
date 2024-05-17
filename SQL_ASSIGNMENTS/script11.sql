-- Add city column in family details table.

use family;
alter table family_dtl ADD column city varchar(255);
select * from family_dtl;