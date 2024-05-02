-- Generate report showing product table with one added column prod_cat that classifies product with average price of all products.
-- (greater & smaller than avg_price )
select avg(price) from product;

select product_id,price,
CASE
    WHEN price > (select avg(price) from product) THEN 'The price  is greater than avg'
    WHEN price < (select avg(price) from product) THEN 'The price is less than avg'
    ELSE 'Same as avg'
END as prod_cat
from product
group by product_id;