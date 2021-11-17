-- list out: emp_no, last_name, sex, and salary
SELECT employee.emp_no, employee.last_name, employee.sex, salaries.salary 
FROM employee 
INNER JOIN salaries
ON employee.emp_no = salaries.emp_no;



-- list first_name, last_name, hire_date of employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employee
WHERE hire_date >= '1986-01-01' and hire_date <= '1986-12-31'




-- list the manager of each dept with: dept_no, dept_name, manager's emp_no, last and first name
SELECT dept_manager.dept_no, 
	departments.dept_name,
	employee.emp_no, 
	employee.first_name, 
	employee.last_name
FROM employee
INNER JOIN dept_manager
ON employee.emp_no = dept_manager.emp_no
JOIN departments
on dept_manager.dept_no = departments.dept_no;



--list the dep of each employee with: emp_no, last and first name, dept_name
SELECT 	employee.emp_no,
		employee.last_name,
		employee.first_name,
		departments.dept_name
FROM employee
INNER JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
JOIN departments
on dept_emp.dept_no = departments.dept_no;



--list first and last name of employee whose first name is "Hercules" and last name start with "B"
SELECT first_name, last_name
FROM employee
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'



--list all employee in Sales Dept: emp_no, last and first, dept_name
SELECT 	employee.emp_no, 
		employee.last_name, 
		employee.first_name, 
		departments.dept_name
FROM employee
INNER JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
JOIN departments
on dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';



-- list all employee in Sales and Development dept: emp_no, last and first, dept_name
SELECT 	employee.emp_no, 
		employee.last_name, 
		employee.first_name, 
		departments.dept_name
FROM employee
INNER JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
JOIN departments
on dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';



-- in decending order, list the frequency count of employees' last names
-- how many employees share each last name?
SELECT last_name, COUNT(last_name) AS "Frequency Count"
FROM employee
GROUP BY last_name
ORDER BY "Frequency Count" DESC;