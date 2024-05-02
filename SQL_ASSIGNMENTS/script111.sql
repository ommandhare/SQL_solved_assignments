select * from tran_dtl;
select * from store_dtl;
select * from tran_hdr;

select 
  case
     when month(td.tran_dt) between 1 and 4 then 'first quarter'
	 when month(td.tran_dt) between 5 and 8 then 'second quarter'
	 when month(td.tran_dt) between 9 and 12 then 'third quarter'
     end as per_quarter,
     sd.store_id as per_store,
    count(td.tran_id) as num_trans 
 from tran_dtl td
 join tran_hdr th on th.tran_id=td.tran_id
 join store_dtl sd on sd.store_id=th.store_id
 
 group by per_quarter,sd.store_id;
 
