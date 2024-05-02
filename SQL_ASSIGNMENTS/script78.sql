select * from tran_dtl;



select month(tran_dt) as per_month,count(tran_id)
from tran_hdr
group by per_month
order by per_month;