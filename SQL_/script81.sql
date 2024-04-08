select * from tran_hdr;

select member_id,store_id from tran_hdr where member_id in (select member_id from tran_hdr where store_id='1');