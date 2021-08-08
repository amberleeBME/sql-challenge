# Employee Database: A Mystery in Two Parts
## Data Model
### Entity Relationship Diagram (ERD)
![Entity Relationship Diagram (ERD)](/Images/QuickDBD-employee_schema.png)


## Data Engineering

## Data Analysis
```sql
    SELECT emp.emp_no AS "employee number", 
    emp.last_name AS "last name", 
    emp.first_name AS "first name", 
    emp.sex, salaries.salary
    FROM salaries
    INNER JOIN employees AS emp ON emp.emp_no=salaries.emp_no;
```
> ### Visualizations