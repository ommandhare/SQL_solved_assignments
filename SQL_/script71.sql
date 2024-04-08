select * from tran_hdr;

select store_id,count(tran_id) as number_of_trans from tran_hdr group by store_id;
