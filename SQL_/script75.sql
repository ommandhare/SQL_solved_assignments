select store_id,month(tran_dt) as per_month,member_id,count(tran_id) as number_of_trans
from tran_hdr
group by store_id,per_month,member_id
order by store_id,per_month,member_id;
