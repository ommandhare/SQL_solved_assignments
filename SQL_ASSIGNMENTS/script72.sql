select * from tran_hdr;

select  store_id as per_store, member_id as per_member, count(tran_id) as number_of_trans from tran_hdr group by store_id,member_id;
