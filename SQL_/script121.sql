-- Generate report showing number of transactions per product per store. (product_id,description,st1_tran,st2_tran,st3_tran)

select p.product_id,
p.description,
COUNT(CASE WHEN th.store_id='1' THEN 1 END) AS st1_tran,
    COUNT(CASE WHEN th.store_id='2' THEN 1 END) AS st2_tran,
COUNT(CASE WHEN th.store_id='3' THEN 1 END) AS st3_tran
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id
join product p on p.product_id=td.product_id
join store_dtl sd on th.store_id=sd.store_id

group by td.product_id,sd.store_id;