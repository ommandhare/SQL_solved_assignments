-- Generate report showing total quantity purchased for each product each store.(product_id,description,store_id,store_city,qty)

select * from tran_dtl;
select * from tran_hdr;
select * from product;
select * from store_dtl;

select  p.product_id,p.description,sd.store_id,count(td.qty) from product p
join tran_dtl td on p.product_id=td.product_id
join  tran_hdr th on  td.tran_id=td.tran_id
join store_dtl sd on sd.store_id=th.store_id
group by p.product_id,sd.store_id;

