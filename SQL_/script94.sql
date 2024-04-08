use retail;
select * from tran_dtl;
select * from tran_hdr;
select * from product;
-- Generate report showing tran_ID,Product_id,product_description,tran_amt,tran_dt

select td.tran_id,td.product_id,p.description,td.amt,td.tran_dt from tran_dtl td
join product p on td.product_id=p.product_id;
