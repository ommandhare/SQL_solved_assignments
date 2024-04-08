select * from member;
select * from tran_hdr;
use retail;
select first_name,count(*) as num_of_trans
from tran_hdr th
join member m on m.member_id=th.member_id
group by th.member_id;

select * from store_dtl;
