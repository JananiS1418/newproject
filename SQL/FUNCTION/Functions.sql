CREATE database employees;
use employees;
CREATE TABLE employees_1(
      emp_id INT PRIMARY KEY auto_increment,
      emp_name VARCHAR(20),
      email VARCHAR(30),
      department VARCHAR(15),
      salary INT,
      join_date DATE
);

INSERT INTO employees_1 (emp_name,email,department,salary,join_date) VALUES ('Arun Kumar', 'arun@gmail.com', 'HR', 45000, '2025-10-10'),
('Meena Devi', 'meena@gmail.com', 'IT', 65000, '2025-11-15'),
('Sathish Raj', 'sathish@gmail.com', 'Finance', 52000, '2025-09-28'),
('Kavitha', 'kavi@gmail.com', 'IT', 70000, '2025-12-01'),
('Mohan', 'mohan@gmail.com', 'Sales', 40000, '2025-11-20');

UPDATE employees_1 SET emp_name = UPPER(emp_name) WHERE emp_id > 0;

SELECT department ,sum(salary) as total_salary from employees_1 GROUP BY department;

SELECT * from employees_1 WHERE join_date >= DATE_SUB(CURDATE(),INTERVAL 30 DAY);

SELECT emp_name ,salary ,ROUND(salary,2) as rounded_salary from employees_1;

SELECT emp_name from employees_1 GROUP BY emp_name HAVING LENGTH(emp_name)>5;

SELECT department ,AVG(salary) from employees_1 	GROUP BY department HAVING avg(salary) > 50000;

UPDATE employees_1  SET salary = salary * 1.10 WHERE emp_id > 0;

ALTER TABLE employees_1 ADD bonus INT;

SELECT emp_name ,join_date ,YEAR(join_date) as join_year from employees_1 ORDER BY join_date ASC;



