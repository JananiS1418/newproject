CREATE DATABASE company_db;
use company_db;
CREATE TABLE employees_1 (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    job_title VARCHAR(30),
    salary INT
);

INSERT INTO employees_1 (emp_name, department, job_title, salary) VALUES ('Jeni', 'Marketing', 'Marketing Lead', 78000),
('Ragul', 'IT', 'DevOps Engineer', 82000),
('Mani', 'IT', 'Developer', 60000),
('Priya', 'Marketing', 'SEO Specialist', 50000),
('Nithya', 'HR', 'HR Executive', 47000),
('Gopal', 'Finance', 'Senior Analyst', 88000),
('Sanjay', 'Sales', 'Sales Executive', 42000),
('Lokesh', 'IT', 'System Admin', 55000);

SELECT department from employees_1 GROUP BY department HAVING COUNT(*)>2;

SELECT department from employees_1 GROUP BY department HAVING AVG(salary)> 50000;

SELECT job_title from employees_1 GROUP BY job_title HAVING MAX(salary) > 60000;

SELECT department from employees_1 GROUP BY department HAVING SUM(salary) > 100000;

SELECT emp_name,department from employees_1;

SELECT emp_name AS Name, salary AS Salary, department AS Dept FROM employees_1;

SELECT * FROM employees_1 WHERE salary > 55000;

SELECT emp_name from employees_1 WHERE department = "IT" AND salary> 80000;

SELECT * FROM employees_1  WHERE emp_name LIKE 'J%';

SELECT * FROM employees_1 ORDER BY salary DESC;

SELECT * FROM employees_1 ORDER BY department ASC ,salary DESC;

SELECT * FROM employees_1  LIMIT 5;

SELECT * FROM employees_1 LIMIT 3 OFFSET 2;

SELECT DISTINCT department from employees_1;

SELECT COUNT(DISTINCT department ) from employees_1;

SELECT department ,count(*) from employees_1 GROUP BY department ;

SELECT department ,avg(salary) from employees_1 GROUP BY department;

SELECT  department ,SUM(salary) from employees_1 GROUP BY department;

SELECT  department ,max(salary) from employees_1 GROUP BY department;

SELECT department ,salary from employees_1 GROUP BY department,salary;

SELECT department from employees_1 GROUP BY department HAVING count(*) >2;

SELECT department from employees_1 GROUP BY department HAVING avg(salary) >50000;

SELECT department from employees_1 GROUP BY department HAVING sum(salary) >100000;

SELECT department from employees_1 GROUP BY department HAVING sum(salary) >100000 AND MAX( length(emp_name)) > 5;

SELECT emp_name , department from employees_1 GROUP BY emp_name,department HAVING max(salary)> 60000;

SELECT department ,COUNT(*),avg(salary),sum(salary) from employees_1 GROUP BY department HAVING AVG(salary)>40000 ORDER BY department DESC LIMIT 5;

SELECT emp_name from employees_1 GROUP BY emp_name ORDER BY emp_name ASC;

SELECT department FROM employees_1 WHERE salary > 50000 GROUP BY department HAVING AVG(salary) > 60000;

SELECT DISTINCT emp_name from employees_1 WHERE department = "IT";

SELECT department ,avg(salary) as average_salary ,min(salary) as minimum_salary,max(salary) as maximum_salary from employees_1 GROUP BY department;




