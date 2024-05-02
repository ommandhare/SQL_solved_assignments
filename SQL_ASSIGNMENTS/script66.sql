select * from tran_hdr;


select member_id as per_member,count(tran_id), count(store_id) as per_store from tran_hdr 
group by member_id,store_id  ;
