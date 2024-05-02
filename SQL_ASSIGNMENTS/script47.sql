use retail;
select min(price) from product where category='Beverages' group by price;