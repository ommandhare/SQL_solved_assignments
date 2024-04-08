-- Generate report showing classification of member based on number of products(in quantity) 
-- purchased by him (member_id,total_qty_prod,classification)

select * from tran_dtl;

select m.member_id, sum(td.qty) as total_qty_prod, 
 CASE
        WHEN   sum(td.qty)>=1000 THEN 'poor'
		WHEN   sum(td.qty)>=5000 THEN 'middle'
		WHEN   sum(td.qty)>10000 THEN 'rich'
        ELSE 'not visited'
    END AS classification

from member m
join tran_hdr th on th.member_id=m.member_id
join tran_dtl td on th.tran_dt=td.tran_dt
group by m.member_id;


