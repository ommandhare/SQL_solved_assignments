-- Generate report showing store_id,month,total_monthly_sale,rank_month.(highest sale – Rank  1)

select sd.store_id,month(td.tran_dt) as per_month,sum(td.amt) as total_sale,
RANK () OVER (ORDER BY store_id desc) AS tran_rank  
 from store_dtl sd 
	join tran_hdr th on th.store_id=sd.store_id
	join tran_dtl td on td.tran_id=th.tran_id
    group by sd.store_id,per_month;
