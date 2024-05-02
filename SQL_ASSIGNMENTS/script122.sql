-- Generate report showing total quantity for each product per store.(product_id,description,st1_qty,st2_qty,st3_qty,total_qty)


select p.product_id,
p.description,
count(case when max_qty<=5 then 1 end) as st1_qty ,
count(case when max_qty<=3 then 1 end) as st2_qty ,
count(case when max_qty<=1 then 1 end) as st3_qty,
count(max_qty)
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id
join product p on p.product_id=td.product_id
join store_dtl sd on th.store_id=sd.store_id

group by td.product_id,sd.store_id;