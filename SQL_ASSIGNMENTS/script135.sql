-- Generate report showing rank for category according to total_amt of sale per store per month. (store_id,month,category,total_sale,category_rank)
use retail;

select store_id,per_month,category,total_sale,
ROW_NUMBER() OVER(partition by store_id order by total_sale desc) as category_rank 
from 
(
select sd.store_id,month(td.tran_dt) as per_month,p.category,sum(td.amt) as total_sale
	from tran_dtl td
	join tran_hdr th on th.tran_id=td.tran_id
	join store_dtl sd on sd.store_id=th.store_id
	join product p on td.product_id=p.product_id
    group by sd.store_id,per_month,p.category
   )s ;