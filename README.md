# Employee Database: A Mystery in Two Parts
## Data Model and Data Engineering
### Entity Relationship Diagram (ERD)
![Entity Relationship Diagram (ERD)](/Images/QuickDBD-employee_schema.png)


### Table Schema
* Tables were created and imported in the following order:
    1. titles
    2. employees
    3. departments
    4. dept_manager
    5. dept_emp
    6. salaries

* Primary Keys
    Table|Column Name|Data Type|
    -----|-----------|---------|
    titles|title_id|VARCHAR(30)|
    employees|emp_no|INT|
    departments|dept_no|VARCHAR(30)|

    Code Snippet:
    ```sql
    CREATE TABLE "titles" (
        "title_id" VARCHAR(30)   NOT NULL,
        "title" VARCHAR(30)   NOT NULL,
        CONSTRAINT "pk_titles" PRIMARY KEY (
            "title_id"
        )
    );
    ```
* Composite Keys

    Code Snippet:
    ```sql
    CREATE TABLE "titles" (
        "title_id" VARCHAR(30)   NOT NULL,
        "title" VARCHAR(30)   NOT NULL,
        CONSTRAINT "pk_titles" PRIMARY KEY (
            "title_id"
        )
    );
    ```
* Foreign Keys

    |Foreign Key |Reference
    |-----|----------------------------|
    |\<table> (\<column>)|\<table> (\<column>)|
    |employees (emp_title_id)| titles (title_id)|
    |dept_emp (emp_no)|employees (emp_no)|
    |dept_emp (dept_no)|departments (dept_no)|
    |dept_manager (dept_no)|departments (dept_no)|
    |dept_manager (emp_no)|employees (emp_no)|
    |salaries (emp_no)|employees (emp_no)|

    Code Snippet:
    ```sql
    ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("emp_title_id") REFERENCES "titles" ("title_id");
    ```

## Data Analysis

Code Snippet:
```sql
    SELECT emp.emp_no AS "employee number", 
    emp.last_name AS "last name", 
    emp.first_name AS "first name", 
    emp.sex, salaries.salary
    FROM salaries
    INNER JOIN employees e ON emp.emp_no=salaries.emp_no;
```
> ### Visualizations