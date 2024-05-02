

select store_id,month(tran_dt) as per_month,count(tran_id)
from tran_hdr
group by store_id,per_month
order by store_id,per_month;
