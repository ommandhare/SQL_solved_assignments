use retail;
use retail_project;
select * from tran_dtl;
select * from tran_hdr;

DELETE FROM tran_dtl WHERE tran_dt='2024-03-21';
DELETE FROM tran_hdr WHERE tran_dt='2024-03-21';

select * from product
where category="grocery";
select * from product;

select * from affinity;

create table member_reward_by_trip(
member_id int, 
yearly_trip_count int,
membership varchar(40)
)
;


select * from member;


select * from member_reward_by_trip;


CREATE TABLE test1(id INT PRIMARY KEY ,name VARCHAR(50) NOT NULL ,address VARCHAR(50)  ,reg_date DATE NOT NULL );

