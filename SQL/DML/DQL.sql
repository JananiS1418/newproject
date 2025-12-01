CREATE DATABASE employee_details ;
USE employee_details;

CREATE TABLE employee(
  employee_id INT PRIMARY KEY AUTO_INCREMENT,
  employee_name VARCHAR(30),
  employee_department VARCHAR(10),
  employee_salary INT,
  employee_city VARCHAR(20)
);

INSERT INTO employee (employee_name,employee_department,employee_salary,employee_city) VALUES ('Ravi Kumar', 'HR', 55000, 'Chennai'),
('Manoj Reddy', 'HR', 45000, 'Bangalore'),
('Suresh Babu', 'IT', 55000, 'Bangalore'),
('Arun Kumar', 'HR', 45000, 'Chennai'),
('Karthik Raj', 'IT', 55000, 'Bangalore'),
('Meena Devi', 'IT', 45000, 'Chennai');

select count(*) from employee;

select  employee_department,avg(employee_salary) from employee GROUP BY employee_department;

select employee_city,count(*) from employee GROUP BY employee_city;

select employee_department,min(employee_salary) as minimumsalary ,max(employee_salary) as maximumsalary from employee GROUP BY employee_department;

select employee_department,sum( employee_salary) as totalsalary from employee GROUP BY employee_department;

select employee_department ,count(*) as totalemployee from employee GROUP BY employee_department HAVING count(*)>2;

select employee_department  from employee GROUP BY employee_department HAVING avg(employee_salary) >50000;

select employee_city from employee GROUP BY employee_city HAVING 	count(*)>1;

select employee_department ,max(employee_salary) as maximumsalary from employee GROUP BY employee_department HAVING max(employee_salary) > 10000;

select employee_department from employee  GROUP BY employee_department HAVING sum(employee_salary) > 150000;

select employee_city ,avg(employee_salary) as averagesalary from employee GROUP BY employee_city HAVING avg(employee_salary)> 50000;

select employee_department ,count(*) as toatlemployee from employee WHERE employee_salary> 50000 GROUP BY employee_department;

select employee_department ,count(*) as employeeconut from employee GROUP BY employee_department HAVING min(employee_salary)>40000;

