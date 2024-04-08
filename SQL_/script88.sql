select * from tran_dtl;
select * from tran_hdr;

select * from product;
select * from member;

SELECT member_id,count(*)
  AS NUM_OF_TRANS 
	FROM tran_hdr 
       WHERE tran_id  NOT IN
		(
			SELECT tran_id FROM tran_dtl WHERE product_id IN
				(
				SELECT product_id FROM product WHERE category='Dairy'
				)
		)
            GROUP BY member_id
            order by member_id desc; 
            
            
            