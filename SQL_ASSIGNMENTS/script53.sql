use employees;

select emp_no,AVG(salary) as total_salaries from salaries group by emp_no;