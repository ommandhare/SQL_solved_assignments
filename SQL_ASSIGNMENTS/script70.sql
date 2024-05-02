select * from tran_hdr;

select member_id,count(tran_id) as number_of_trans from tran_hdr group by member_id;
