-- Generate report showing total_sale for each category per store.(category,st1_sale,st2_salest3_sale,total_sale)

select 
p.category,
count(case when th.store_id='1' then 1 end) as st1_sale ,
count(case when th.store_id='2' then 1 end) as st2_sale ,
count(case when th.store_id='3' then 1 end) as st3_sale,
sum(amt)
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id
join product p on p.product_id=td.product_id
join store_dtl sd on th.store_id=sd.store_id

group by p.category,sd.store_id;