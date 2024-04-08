-- Generate report showing top 3 products purchased per store according to quantity sold. (store_id,product_id,description,total_qty,product_rank)

use retail;

select store_id,product_id,description,total_qty,product_rank from(


	select sd.store_id,p.product_id,description,count(qty) as total_qty,
	ROW_NUMBER() OVER (PARTITION BY store_id ORDER BY count(qty) DESC) AS product_rank
	from tran_dtl td
	join tran_hdr th on th.tran_id=td.tran_id
	join store_dtl sd on sd.store_id=th.store_id
	join product p on td.product_id=p.product_id
	
	group by product_id,sd.store_id
)s
where product_rank<=3
;