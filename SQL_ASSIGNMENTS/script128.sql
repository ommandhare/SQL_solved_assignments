select  product_id,description,
this_month,
monthly_sale,
sale_upto_this_month,
monthly_sale+sale_upto_this_month as upto 
from (
	select product_id,description,this_month,monthly_sale,
    lag(monthly_sale,1,0) over(partition by product_id order by this_month) as sale_upto_this_month from 
	(
		select description,td.product_id,month(tran_dt) as this_month,sum(amt) as monthly_sale
		 from tran_dtl td
		join product p on td.product_id=p.product_id
		group by product_id,this_month)s
        )s1
        ;