select * from salaries;
select emp_no,sum(salary) as sum_each_salaries 
from salaries group by emp_no;
