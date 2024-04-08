select * from tran_dtl;
select * from product;

select * from tran_dtl where product_id in (select product_id from product where description like 'Chee%');


