
select * from product;

select product_id,description,category,price from product where price=(select least() from product);


select * from product
where category=(
 (select category
		from product
        group by category
        having count(*)=(
select min(c) from 
(
	select category,count(*) as c
		from product
			group by category)s
            )
   )
   );