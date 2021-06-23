--List the emp id, name, gender and salary of all employees
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary
from employees as e
left join salaries as s
on e.emp_no=s.emp_no;

--List name and hire date for employees hired in 1986
select e.first_name,e.last_name,e.hire_date from employees as e
where hire_date>'1985-12-31'
and hire_date<'1987-1-1';

--List departments and names of all managers
select d.dept_no,d.dept_name,dm.emp_no,e.last_name,e.first_name
from departments as d
inner join dept_manager as dm
on d.dept_no=dm.dept_no
inner join employees as e
on dm.emp_no=e.emp_no;