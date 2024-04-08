select * from tran_dtl where product_id between '73' and '89' ;
select * from product;


select tran_id,product_id from tran_dtl 
where tran_id in 
          (select tran_id from tran_dtl where product_id in 
                   (select product_id from product where category='Grocery')
                     ) 
                       ;
