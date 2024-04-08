use retail;

select * from product;

select product_id,description,category,price from product where price=(select min(price) from product);
