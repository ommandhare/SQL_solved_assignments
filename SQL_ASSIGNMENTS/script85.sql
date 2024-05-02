select * from member;


select member_id,first_name,last_name from member where store_id in 
    (select store_id from tran_dtl where product_id=
           (select product_id from product where description ='Milk')  );
