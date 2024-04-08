use retail;
-- Generate report showing product _id,description,month,monthly_sale,previous_month_sale.

select  product_id,description,
this_month,
monthly_sale,
prev_monthly_sale 
from (
	select product_id,description,this_month,monthly_sale,
    lag(monthly_sale) over(partition by product_id order by this_month) as prev_monthly_sale from 
	(
		select description,td.product_id,month(tran_dt) as this_month,sum(amt) as monthly_sale
		 from tran_dtl td
		join product p on td.product_id=p.product_id
		group by product_id,this_month
        )p
	)s
        ;