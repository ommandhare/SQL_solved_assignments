use retail;

select * from tran_hdr;
select member_id,count(tran_id) from tran_hdr where month(tran_dt)=1 group by member_id;