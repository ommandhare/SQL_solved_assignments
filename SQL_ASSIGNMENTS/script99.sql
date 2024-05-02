
select * from tran_dtl;
select * from tran_hdr;
select * from product;
-- Generate report showing total quantity purchased for each product (product_id,product_description,total_qty)

select p.product_id,p.description,count(qty) as total_quantity
from product p
join tran_dtl td on p.product_id=td.product_id
group by p.product_id;