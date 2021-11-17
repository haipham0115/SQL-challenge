# SQL-challenge
SQL assignment for bootcamp


DATA ENGINEERING
Use ERD (Entities Relation Diagram) as the "blueprint" for for setting up the data base
Consider all the necessary PRIMARY KEYS and FOREIGN KEYS to honor the relationships between the table

Create tables with appropriate data types for all the data (int, string, or date)
6 tables: 
  employee
  departments
  salaries
  titles
  dept_emp
  dept_manager
  
Import data from CSV files into the tables accordingly. Error-free imports (all the data type are set up correctly)

DATA ANALYSIS
List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT and JOIN


List first name, last name, and hire date for employees who were hired in 1986.
SELECT, JOIN, and condition WHERE

List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT, JOIN between 3 tables

List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT, JOIN between 3 tables


List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT, JOIN, and condition WHERE. Use the 'wildcard' technique '%'

List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT, JOIN between 3 tables and condition WHERE


List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT, JOIN between 3 tables and condition WHERE


In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT with aggregate function COUNT with assistant of GROUP BY and ORDER BY.
