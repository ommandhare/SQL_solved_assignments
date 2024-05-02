-- Generate report showing number of members registered per store per quarter.(store_id,store_city,qtr1_reg,qtr2_reg,qtr3_reg,qtr4_reg)


select 
sd.store_id,
sd.store_city,
COUNT(CASE WHEN month(td.tran_dt) BETWEEN 1 AND 3 THEN 1 END) AS qtr1_reg,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 4 AND 6 THEN 1 END) AS qtr2_reg,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 7 AND 9 THEN 1 END) AS qtr3_reg,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 10 AND 12 THEN 1 END) AS qtr4_reg
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id
join product p on p.product_id=td.product_id
join store_dtl sd on th.store_id=sd.store_id

group by member_id,store_id,store_city;