
-- Generate report showing total quantity per category per store.(category,st1_qty,st2_qty,st3_qty)


select 
p.category,
count(case when th.store_id='1' then 1 end) as st1_qty ,
count(case when th.store_id='2' then 1 end) as st2_qty ,
count(case when th.store_id='3' then 1 end) as st3_qty
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id
join product p on p.product_id=td.product_id
join store_dtl sd on th.store_id=sd.store_id

group by p.category,sd.store_id;