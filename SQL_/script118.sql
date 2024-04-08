-- Generate report showing number of product per category according to product classification.
-- (category,high_value,med_value,low_value,total_products)
select * from product;

select category,
count(case when max_qty<=5 then 1 end) as high_value ,
count(case when max_qty<=3 then 1 end) as med_value ,
count(case when max_qty<=1 then 1 end) as low_value ,
count(max_qty) 

from product
group by category,max_qty
;