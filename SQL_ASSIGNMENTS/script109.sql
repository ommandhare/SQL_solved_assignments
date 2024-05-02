select tran_id,tran_dt,
  case
     when month(tran_dt) between 1 and 4 then 'first quarter'
	 when month(tran_dt) between 5 and 8 then 'second quarter'
	 when month(tran_dt) between 9 and 12 then 'third quarter'
     end as quarter_date
 from tran_dtl;