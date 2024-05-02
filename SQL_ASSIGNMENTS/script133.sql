use retail;


select store_id,month(tran_dt),total_sale,prev_1_avg+prev_2_avg+prev_3_avg as total_last_3_AVG 
from
(
select store_id,month(tran_dt),total_sale, 
lag(average_sale,1) over(partition by store_id order by tran_dt) as prev_1_avg,
lag(average_sale,2) over(partition by store_id order by tran_dt) as prev_2_avg,
lag(average_sale,3) over(partition by store_id order by tran_dt) as prev_3_avg,tran_dt

from(
	select sd.store_id,month(td.tran_dt),sum(amt) as total_sale,avg(amt) as average_sale,td.tran_dt from store_dtl sd
	join tran_hdr th on th.store_id=sd.store_id
	join tran_dtl td on td.tran_id=th.tran_id
	group by sd.store_id,td.tran_dt)s
    )s1
    ;