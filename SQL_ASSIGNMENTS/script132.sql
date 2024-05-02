use retail;

  
select member_id,total_sale,last_1rd_month_sale+last_2rd_month_sale+last_3rd_month_sale as last_total_3
  from(
  
	  select member_id,total_sale,tran_dt,last_2rd_month_sale,last_3rd_month_sale,
	lag(total_sale,1) over(partition by member_id order by tran_dt) as last_1rd_month_sale   
	 from   
	  (
		  select member_id,total_sale,tran_dt,last_3rd_month_sale, 
		lag(total_sale,2) over(partition by member_id order by tran_dt) as last_2rd_month_sale   
		 from   
			 (
			  select member_id,total_sale,tran_dt,
			lag(total_sale,3) over(partition by member_id order by tran_dt) as last_3rd_month_sale   
			 from 
			(	select member_id,sum(amt) as total_sale,td.tran_dt
				from 
				tran_dtl td
				join tran_hdr th on th.tran_id=td.tran_id
				group by member_id,tran_dt
				)s
				)s1
				)s2
                )s3;  
			