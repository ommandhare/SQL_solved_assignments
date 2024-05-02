use retail;

select product_id,avg(price) from product group by product_id;

