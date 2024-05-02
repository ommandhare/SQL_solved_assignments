select * from tran_hdr;
select * from tran_dtl;
select * from product where description like "L%";

select * 
from tran_hdr 
where tran_id in
	(
	select tran_id 
    from tran_dtl 
    where product_id in
		(
		select product_id 
        from product 
        where description like "L%"
        )
	);


