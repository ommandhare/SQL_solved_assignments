-- Generate report showing total amount of purchase for each category per  month.(category_name,month,total_amt)

select * from tran_dtl;
select * from tran_hdr;
select * from product;
select * from store_dtl;

select p.category,month(tran_dt) as per_month ,sum(td.amt) as total_amount from product p
join tran_dtl td on p.product_id=td.product_id
group by p.category,td.tran_dt;



