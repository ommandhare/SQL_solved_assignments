select * from tran_dtl;
select * from tran_hdr;
select * from product;





SELECT p.description,MONTH(td.tran_dt) AS per_month,
sum(amt) AS total_sale FROM product p 
JOIN tran_dtl td ON p.product_id=td.product_id
GROUP BY td.product_id,td.tran_dt;
