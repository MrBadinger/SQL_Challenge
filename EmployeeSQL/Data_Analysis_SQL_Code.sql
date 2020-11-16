-- 1) List the following details of each employee: employee number, last name, first name, sex, and salary.

Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Inner Join salaries On
employees.emp_no=salaries.emp_no


-- 2) List first name, last name, and hire date for employees who were hired in 1986.

Select employees.first_name, employees.last_name, employees.hire_date
From employees
Where employees.hire_date >= '1986-01-01 00:00:00'
AND employees.hire_date <  '1987-01-01 00:00:00'


-- 3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

Select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From employees
Inner Join dept_manager On employees.emp_no=dept_manager.emp_no
Inner Join departments On departments.dept_no=dept_manager.dept_no


-- 4) List the department of each employee with the following information: employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no=dept_emp.emp_no
Inner Join departments On departments.dept_no=dept_emp.dept_no


-- 5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select employees.first_name, employees.last_name, employees.sex
From employees
Where employees.first_name = 'Hercules'
AND employees.last_name Like 'B%'


-- 6) List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no=dept_emp.emp_no
Inner Join departments On departments.dept_no=dept_emp.dept_no
Where departments.dept_name = 'Sales'


-- 7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Inner Join dept_emp On employees.emp_no=dept_emp.emp_no
Inner Join departments On departments.dept_no=dept_emp.dept_no
Where departments.dept_name = 'Sales'
Or departments.dept_name = 'Development'


-- 8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select employees.last_name, Count(employees.last_name) As "Frequency of Last Name"
From employees
Group By employees.last_name
Order By "Frequency of Last Name" Desc

