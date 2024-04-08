-- Generate report showing total amount of purchase for each product each store.(category_name,total_amt)
use retail;
select * from tran_dtl;
select * from tran_hdr;
select * from product;
select * from store_dtl;

select p.category, sum(td.amt) as total_amount from product p
join tran_dtl td on p.product_id=td.product_id
group by p.category;