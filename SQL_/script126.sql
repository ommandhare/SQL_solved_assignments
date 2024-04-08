-- Generate report showing number of transaction per member per store in which he had purchased cheese. (member_id,first_name,st1_tran,st2_tran,st3_tran)

select 
m.member_id,
m.first_name,
count(case when th.store_id='1' then 1 end) as st1_tran ,
count(case when th.store_id='2' then 1 end) as st2_tran ,
count(case when th.store_id='3' then 1 end) as st3_tran
from
 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id
join product p on p.product_id=td.product_id
join store_dtl sd on th.store_id=sd.store_id
join member m on th.member_id=m.member_id

where p.description='cheese'
group by member_id;

select * from product;