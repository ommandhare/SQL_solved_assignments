-- Generate report showing number of transactions per store per quarter. (store_id,store_city,qtr1,qtr2,qtr,qtr4,total_tran)


select sd.store_id,
store_city,
COUNT(CASE WHEN month(td.tran_dt) BETWEEN 1 AND 3 THEN 1 END) AS qtr1,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 4 AND 6 THEN 1 END) AS qtr2,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 7 AND 9 THEN 1 END) AS qtr3,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 10 AND 12 THEN 1 END) AS qtr4,
    count(*) as total_tran
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id
join store_dtl sd on th.store_id=sd.store_id

group by sd.store_id,store_city;