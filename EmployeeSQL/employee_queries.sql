SELECT * FROM employees LIMIT 100;
-- Employee Queries

-- 1. employee number, last name, first name, sex, and salary
SELECT emp.emp_no AS "employee number", 
emp.last_name AS "last name", 
emp.first_name AS "first name", 
emp.sex, salaries.salary
FROM salaries
INNER JOIN employees AS emp ON emp.emp_no=salaries.emp_no;

-- 2. first name, last name, and hire date for employees who were hired in 1986
SELECT first_name AS "first name", 
last_name AS "last name", 
hire_date As "hire date"
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986';

-- 3. department number, department name, manager's employee number, last name, first name
SELECT d.dept_no AS "department number", 
d.dept_name AS "department name",
dm.emp_no AS "employee number",
e.last_name AS "last name",
e.first_name AS "first name"
FROM dept_manager dm
INNER JOIN departments d ON dm.dept_no = d.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no;

-- 4. employee number, last name, first name, and department name
SELECT dm.emp_no AS "employee number", 
e.last_name AS "last name",
e.first_name AS "first name",
d.dept_name AS "department name"
FROM departments d
INNER JOIN dept_emp dm ON d.dept_no = dm.dept_no
INNER JOIN employees e ON dm.emp_no=e.emp_no;

-- 5. first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B"
SELECT first_name AS "first name", 
last_name AS "last name", 
sex
FROM employees
WHERE first_name= 'Hercules' AND last_name LIKE 'B%';

-- REMEMBER TO COMMIT! 6. all employees in the Sales department, their employee number, last name, first name, and department name


-- REMEMBER TO COMMIT! 7. all employees in the Sales *AND* Development departments, their employee number, last name, first name, and department name


-- REMEMBER TO COMMIT! 8. in descending order: the frequency count of employee last names (i.e., how many employees share each last name)