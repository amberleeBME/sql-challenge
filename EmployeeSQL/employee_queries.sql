-- Employee Queries

-- 1. employee number, last name, first name, sex, and salary
SELECT emp.emp_no AS "employee number", emp.last_name AS "last name", emp.first_name AS "first name", emp.sex, salaries.salary
FROM salaries
INNER JOIN employees AS emp ON emp.emp_no=salaries.emp_no
LIMIT 100;

-- 2. first name, last name, and hire date for employees who were hired in 1986
SELECT first_name AS "first name", last_name AS "last name", hire_date As "hire date"
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986'
LIMIT 100;

-- 3. department number, department name, manager's employee number, last name, first name
SELECT d.dept_no AS "department number", 
d.dept_name AS "department name",
dm.emp_no AS "employee number",
e.last_name AS "last name",
e.first_name AS "first name"
FROM dept_manager dm
INNER JOIN departments d ON dm.dept_no = d.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no
LIMIT 100;
