-- Generate report showing total number of transactions for each member which have total amount of purchase >100 . (member_id,member_name,num_tran_100)


select * from tran_dtl;
select * from tran_hdr;
select * from product;
select * from member;

select m.member_id,m.first_name,sum(td.amt) from member m
join tran_hdr th on m.member_id=th.member_id
join tran_dtl td on td.tran_id=th.tran_id
group by m.member_id;


SELECT m.member_id, first_name, sum(td.amt) as total_tran
FROM tran_dtl td 
JOIN tran_hdr th ON td.tran_id = th.tran_id
JOIN member m ON m.member_id = th.member_id

GROUP BY m.member_id
having total_tran<1200;