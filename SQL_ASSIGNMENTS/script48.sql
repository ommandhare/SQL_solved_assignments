use retail;

select max(price) from product where category='frozen' group by price;