use employees;
-- Generate a report that shows employee number, first name, title, department name.

select * from employees;
select * from titles;
select * from dept_emp;
select * from departments;

select e.emp_no,e.first_name,t.title,d.dept_name from employees e 
join titles t on e.emp_no=t.emp_no
join dept_emp de on de.emp_no=t.emp_no
join departments d on de.dept_no=d.dept_no;

