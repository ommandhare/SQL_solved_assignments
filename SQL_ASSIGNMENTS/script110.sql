select * from tran_dtl;
select 
  case
     when month(tran_dt) between 1 and 4 then 'first quarter'
	 when month(tran_dt) between 5 and 8 then 'second quarter'
	 when month(tran_dt) between 9 and 12 then 'third quarter'
     end as quarter_date,
    count(tran_id) as num_trans 
 from tran_dtl
 
 group by quarter_date;
 
