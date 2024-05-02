use retail;

select * from product;


select category,count(product_id) from product where price<1 group by category ;
