-- Generate report showing max. and min purchased product_ids for each member.(member_id,max_purchase_prod_id,min_purchase_prod_id)

use retail_project;

	SELECT
		member_id,
		MAX(CASE WHEN max_rank = 1 THEN product_id END) AS max_purchase_prod_id,
		 
		MAX(CASE WHEN min_rank = 1 THEN product_id END) AS min_purchase_prod_id
	FROM
	(
	select member_id,product_id,
			ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY product_id DESC) AS max_rank,
			ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY product_id ASC) AS min_rank
		FROM
	(
	select th.member_id,product_id
	 from tran_dtl td 
		join tran_hdr th on th.tran_id=td.tran_id
	group by th.member_id,td.product_id
	)s
	group by member_id,product_id)s1
	 group by member_id 
     ;
     
     
     
     
     -- alternate
     
     WITH RankedProducts AS (
    SELECT
        member_id,
        product_id,
        ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY product_id ASC) AS min_rank,
        ROW_NUMBER() OVER (PARTITION BY member_id ORDER BY product_id DESC) AS max_rank
    FROM tran_dtl td
       join tran_hdr th on th.tran_id=td.tran_id
)
SELECT
    member_id,
    MAX(CASE WHEN max_rank = 1 THEN product_id END) AS max_purchase_prod_id,
    MAX(CASE WHEN min_rank = 1 THEN product_id END) AS min_purchase_prod_id
FROM
    RankedProducts
GROUP BY
    member_id;
