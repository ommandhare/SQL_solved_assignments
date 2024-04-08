-- Generate report showing total amount of purchase for each member per category per month.(member_id,category,month,total_amt)

select * from tran_dtl;
select * from tran_hdr;
select * from product;
select * from member;

select m.member_id,p.category,month(td.tran_dt) as per_month ,sum(td.amt) as total_amount from product p
join tran_dtl td on p.product_id=td.product_id
join tran_hdr th on th.tran_id=td.tran_id
join member m on m.member_id=th.member_id
group by m.member_id,p.category,per_month; 





