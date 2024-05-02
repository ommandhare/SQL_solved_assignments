select tran_id,tran_dt,sum(amt) 
as total from tran_dtl
where tran_dt='2019-08-12'
group by tran_id;
