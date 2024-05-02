use retail;

select * from tran_hdr;

select tran_id,month(tran_id),store_id as per_store
from tran_hdr
group by tran_id,store_id 
order by tran_id,store_id asc;