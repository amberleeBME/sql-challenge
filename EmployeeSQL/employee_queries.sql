-- Employee Queries

-- 1. employee number, last name, first name, sex, and salary
SELECT emp.emp_no AS "employee number", emp.last_name AS "last name", emp.first_name AS "first name", emp.sex, salaries.salary
FROM salaries
INNER JOIN employees AS emp ON emp.emp_no=salaries.emp_no
LIMIT 100;