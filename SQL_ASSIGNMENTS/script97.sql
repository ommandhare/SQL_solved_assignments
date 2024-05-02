use retail;
select * from tran_dtl;
select * from tran_hdr;
select * from store_dtl;

-- Generate report showing total number of transactions per member(member_id,member_first_name,num_tran)


select m.member_id,m.first_name,count(tran_id) as number_of_tran from tran_hdr th
join member m on m.member_id=th.member_id
group by member_id;
