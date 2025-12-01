CREATE DATABASE construction_db;
USE construction_db;

CREATE TABLE staff(
   staff_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_name VARCHAR(100),
    role VARCHAR(50),
    department VARCHAR(50),
    contact VARCHAR(20),
    joining_date DATE
);

CREATE TABLE materials(
   material_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(100),
    material_type VARCHAR(50),
    supplier_name VARCHAR(100),
    quantity INT
);

CREATE TABLE attendance(
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    date DATE,
    check_in TIME,
    check_out TIME,
    remarks VARCHAR(255),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE stock (
    stock_id INT PRIMARY KEY AUTO_INCREMENT,
    material_name VARCHAR(100),
    quantity_available INT,
    last_updated DATE,
    location VARCHAR(100)
);

CREATE TABLE salary(
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    staff_id INT,
    month VARCHAR(20),
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    total_salary DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);


INSERT INTO staff (staff_id,staff_name,role,department,contact,joining_date) VALUES (1, 'Ravi Kumar', 'Site Engineer', 'Engineering', '9876543210', '2021-03-15');

INSERT INTO materials(material_id,material_name,material_type,supplier_name,quantity) VALUES (1, 'Cement', 'Building Material', 'ABC Suppliers', 200);

INSERT INTO attendance(attendance_id,staff_id,date,check_in,check_out,remarks) VALUES (1, 1, '2024-02-01', '09:00:00', '17:30:00', 'Full day work');

INSERT INTO stock(stock_id,material_name,quantity_available,last_updated,location) VALUES (1, 'Cement', 150, '2024-02-01', 'Warehouse A');

INSERT INTO salary(salary_id,staff_id,month,base_salary,bonus,total_salary,payment_date) VALUES (1, 1, 'January', 55000, 5000, 60000, '2024-02-01');