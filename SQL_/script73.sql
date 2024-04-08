select * from tran_hdr;

select  member_id as per_member, month(tran_dt)
as per_month,  
count(tran_id) as number_of_trans from tran_hdr group by member_id,per_month;
