-- Generate report showing total_sale for each product with product classification according to total_sale.
-- (product_id,description,total_sale,classification)


select amt from tran_dtl order by amt desc; 
select * from tran_hdr;
select 

 p.product_id,p.description, count(td.amt) as total_sale ,
 
case
     when td.amt>=250 then 'high' 
	 when td.amt>=215 then 'low' 
     end as classification
      
from product p
join tran_dtl td on td.product_id=p.product_id

group by p.product_id,classification

order by total_sale desc
;