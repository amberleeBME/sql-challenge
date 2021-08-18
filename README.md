# Employee Database: A Mystery in Two Parts
## Data Model and Data Engineering
### Entity Relationship Diagram (ERD)
![Entity Relationship Diagram (ERD)](/Images/QuickDBD-employee_schema.png)


### Table Schema
Use [employee_schema](/EmployeeSQL/employee_schema.sql) to create the following tables (import data in the same order):
1. titles
2. employees
3. departments
4. dept_manager
5. dept_emp
6. salaries

* Primary Keys were created for each table
    Code Snippet:
    ```sql
    CREATE TABLE titles (
    title_id VARCHAR(30)   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    PRIMARY KEY (title_id)
    );
    ```
* Foreign and Composite Keys were created for salareies table and junction tables (dept_emp, dept_manager)

    Code Snippet:
    ```sql
    CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(30)   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
    );
    ```

## Data Analysis
Use [employee_queries](/EmployeeSQL/employee_queries.sql) to answer the following:
1. List the following details of each employee: employee number, last name, first name, sex, and salary.
2. List first name, last name, and hire date for employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Code Snippet:
```sql
-- 5. first name, last name, and sex of employees whose first name is "Hercules" and last names begin with "B"
SELECT first_name AS "first name", 
last_name AS "last name", 
sex
FROM employees
WHERE first_name= 'Hercules' AND last_name LIKE 'B%';
```
Data Output:
![Data Output Screenshot](/Images/Data_Output_Screenshot.png)