
-- Generate report showing store_id,month,no_transactions,rank_month.(highest transactions-Rank 1)


select sd.store_id,month(td.tran_dt),count(td.tran_id),
RANK () OVER (ORDER BY td.tran_id desc) AS tran_rank  
 from store_dtl sd 
	join tran_hdr th on th.store_id=sd.store_id
	join tran_dtl td on td.tran_id=th.tran_id
    group by store_id,td.tran_id,td.tran_dt;