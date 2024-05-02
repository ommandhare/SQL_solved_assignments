use employees;
select * from dept_emp;
select emp_no,count(dept_no) from dept_emp group by emp_no;
