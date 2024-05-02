select * from tran_dtl;

select  product_id,count(tran_id) from tran_dtl where product_id='17' group by product_id;
