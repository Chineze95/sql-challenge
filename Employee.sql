--List the following details of each employee: 
--employee number, last name, first name, sex, and salary
select
e.emp_no
,last_name
,first_name
,sex
,salary
from employees e
join salaries s on e.emp_no = s.emp_no



--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name
select 
dm.dept_no
,d.dept_name
,e.emp_no
,e.last_name
,e.first_name
from departments d
join department_manager dm on d.dept_no = dm.dept_no
join employees e on dm.emp_no = e.emp_no


--List the department of each employee with the following information:
--employee number, last name, first name, and department name
select 
e.emp_no
,e.last_name
,e.first_name
,d.dept_name
from employees e
join department_emp de on e.emp_no = de.emp_no 
join departments d on de.dept_no = d.dept_no


--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'


--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select
e.emp_no
,last_name
,first_name
,d.dept_name
from employees e
join department_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
where de.dept_no = 'd007'


--List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
select
e.emp_no
,last_name
,first_name
,d.dept_name
from employees e
join department_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
where 
1=1 
and (de.dept_no = 'd007' or de.dept_no = 'd005')


--In descending order, list the frequency count of employee 
--last names, i.e., how many employees share each last name
SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
















