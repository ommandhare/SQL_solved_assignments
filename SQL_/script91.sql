select * from tran_dtl;
select * from member;
select * from product;
select * from tran_hdr;

select m.first_name,p.description,month(td.tran_dt),sum(td.amt) as total_sale from tran_dtl td 
join product p on td.product_id=p.product_id
join tran_hdr th on th.tran_dt=td.tran_dt
join member m on m.member_id=th.member_id
group by m.first_name,p.description,td.tran_dt,td.amt;