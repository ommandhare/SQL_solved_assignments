-- Generate report showing number of transactions per member for each quarter.(member_id,qtr1,qtr2,qtr3,qtr4,total_tran)

select member_id,
COUNT(CASE WHEN month(td.tran_dt) BETWEEN 1 AND 3 THEN 1 END) AS qtr1,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 4 AND 6 THEN 1 END) AS qtr2,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 7 AND 9 THEN 1 END) AS qtr3,
    COUNT(CASE WHEN month(td.tran_dt) BETWEEN 10 AND 12 THEN 1 END) AS qtr4,
    count(*) as total_tran
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id

group by member_id;