-- Generate report showing product rank for member_id 1010 (member_id,product_id,total_sale,rank_product)


select th.member_id,td.product_id,sum(td.amt) as total_sale,
RANK () OVER (ORDER BY member_id desc) AS rank_product  
 from tran_dtl td 
	join tran_hdr th on th.tran_id=td.tran_id
    
    where member_id='1010'
    group by th.member_id,product_id;
		