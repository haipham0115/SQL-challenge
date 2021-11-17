CREATE TABLE titles(
	title_id varchar PRIMARY KEY,
	title_name varchar);

CREATE TABLE employee(
	emp_no int PRIMARY KEY,
	emp_title_no Varchar,
	FOREIGN KEY (emp_title_no) REFERENCES titles(title_id),
	birth_date date,
	first_name varchar,
	last_name varchar,
	sex varchar(1),
	hire_date date);

CREATE TABLE salaries(
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	salary int);

CREATE TABLE departments(
	dept_no varchar PRIMARY KEY,
	dept_name varchar);

CREATE TABLE dept_emp(
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	dept_no varchar,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

CREATE TABLE dept_manager(
	dept_no varchar,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no));
	






