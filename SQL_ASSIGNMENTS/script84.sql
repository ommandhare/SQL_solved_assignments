select * from tran_dtl;
select * from tran_hdr;

select * from product;
select * from member;

select member_id,count(*) as num_of_trans 
from tran_hdr 
where tran_id in 
(select tran_id from tran_dtl where product_id in
      (select product_id from product where description='Bread'))
   group by member_id
  ;
