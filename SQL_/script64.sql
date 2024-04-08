use retail;

select * from tran_hdr;

select member_id,month(member_id) as per_month,store_id as per_store
from tran_hdr
group by member_id,store_id 
order by member_id,store_id asc;