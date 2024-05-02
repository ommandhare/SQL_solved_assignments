select * from tran_hdr;

-- Generate report showing no. of members registered per store per month.

select store_id,month(tran_dt) as per_month,count(member_id)
from tran_hdr
group by store_id,per_month
order by store_id,per_month;
