use employees;
select * from dept_manager;
select count(emp_no),dept_no  from dept_manager as total_manager group by dept_no;
