select * from employees;
select * from titles;
select * from dept_emp;
select * from departments;
-- Generate report that shows title wise number of employees in each department. (show department number and department name)

select d.dept_name,t.title,count(e.emp_no) from titles t
join employees e on e.emp_no=t.emp_no
join dept_emp de on de.emp_no=t.emp_no
join departments d on de.dept_no=d.dept_no
group by d.dept_name,t.title;