select * from tran_hdr;


select member_id,first_name,last_name
 from member where member_id in 
 (select member_id from tran_hdr where month(tran_dt)=5);





