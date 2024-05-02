
use retail;
-- Generate report showing number & transactions per store for each member.(member_id,store1_tran,store2_tran,store3_tran)

select member_id,
 COUNT(CASE WHEN store_id = '1' THEN 1 END) AS store1_tran,
    COUNT(CASE WHEN store_id = '2' THEN 1 END) AS store2_tran,
    COUNT(CASE WHEN store_id = '3' THEN 1 END) AS store3_tran
from

 tran_dtl td

join tran_hdr th on th.tran_id=td.tran_id

group by member_id;

