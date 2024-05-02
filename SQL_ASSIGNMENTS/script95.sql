use retail;
select * from tran_dtl;
select * from tran_hdr;
select * from member;
-- Generate report showing tran_ID,member_id,member_first_name,tran_dt


select td.tran_id,m.member_id,m.first_name,td.tran_dt from tran_dtl td
join tran_hdr th on td.tran_id=th.tran_id
join member m on m.member_id=th.member_id;
