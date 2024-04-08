-- Generate report showing total number of transactions per member per store.(member_id,store_id,store_name,num_tran)

select * from tran_dtl;
select * from tran_hdr;
select * from member;
select * from store_dtl;



select m.member_id,sd.store_id,sd.store_city,count(th.tran_id) from member m 
join store_dtl sd on m.store_id=sd.store_id
join tran_hdr th on th.member_id=m.member_id
group by m.member_id,sd.store_city;
