
select * from tran_dtl;
select * from tran_hdr;
select * from store_dtl;

-- Generate report showing total number of transactions per store.(store_id,store_city,num_tran in descending order)

select sd.store_id,sd.store_city,count(td.tran_id) as num_of_trans 
from store_dtl sd
join tran_hdr th on sd.store_id=th.store_id
join tran_dtl td on td.tran_id=th.tran_id
group by sd.store_id,sd.store_city,td.tran_id
order by td.tran_id desc;