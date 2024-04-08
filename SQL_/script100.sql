
select * from tran_dtl;
select * from tran_hdr;
select * from member;
select * from product;
-- Generate report showing total amount of purchase for each member (member_id,member_name,total_purchase_amt)


select m.member_id,m.first_name,sum(td.amt) as total_purchase_amtz from member m
join tran_hdr th on th.member_id=m.member_id
join tran_dtl td on td.tran_id=th.tran_id
group by m.member_id;