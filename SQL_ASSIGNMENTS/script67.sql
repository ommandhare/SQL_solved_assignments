select * from tran_hdr;

select store_id,count(member_id) from tran_hdr group by store_id;