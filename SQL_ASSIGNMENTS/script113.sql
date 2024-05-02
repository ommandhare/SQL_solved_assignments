-- Generate report showing number of transaction per member per store per quarter. (member_id,store_id,qtr,num_tran)

-- Generate report showing number of transaction per member per quarter (member_id,qtr,num_tran)

select 
  case
     when month(td.tran_dt) between 1 and 4 then 'first quarter'
	 when month(td.tran_dt) between 5 and 8 then 'second quarter'
	 when month(td.tran_dt) between 9 and 12 then 'third quarter'
     end as per_quarter,
     m.member_id as per_member,
      sd.store_id as per_store,
    count(td.tran_id) as num_trans 
 from tran_dtl td
 join tran_hdr th on th.tran_id=td.tran_id
 join member m on m.member_id=th.member_id
 join store_dtl sd on sd.store_id=th.store_id
 
 group by per_quarter,m.member_id,sd.store_id;
 