CREATE DATABASE movie_db;
USE movie_db;


CREATE TABLE movie1(
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_title VARCHAR(100),
    release_year INT,
    director VARCHAR(20),
    producer VARCHAR(20)
);


CREATE TABLE casting(
    cast_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    actor_id INT,
    actor_name VARCHAR(100),
    role_name VARCHAR(100),
    screen_time_minutes INT,
    payment DECIMAL(10,2),
    contract_start DATE,
    contract_end DATE,
    FOREIGN KEY (movie_id) REFERENCES movie1(movie_id)
);


CREATE TABLE materials (
    material_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    material_name VARCHAR(100),
    material_type VARCHAR(50),
    supplier_name VARCHAR(100),
    quantity INT,
    cost_per_unit DECIMAL(10,2),
    purchase_date DATE,
    location_used VARCHAR(100),
    remarks VARCHAR(255),
    FOREIGN KEY (movie_id) REFERENCES movie1(movie_id)
);


CREATE TABLE Salary_maintenance(
    salary_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    person_name VARCHAR(100),
    role VARCHAR(50),
    department VARCHAR(50),
    base_salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    total_salary DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (movie_id) REFERENCES movie1(movie_id)
);


CREATE TABLE staff_attendance(
    attendance_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    staff_id INT,
    staff_name VARCHAR(100),
    department VARCHAR(50),
    date DATE,
    check_in_time TIME,
    check_out_time TIME,
    remarks VARCHAR(255),
    FOREIGN KEY (movie_id) REFERENCES movie1(movie_id)
);


CREATE TABLE technicians (
    technician_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    technician_name VARCHAR(100),
    department VARCHAR(50),
    experience_years INT,
    contact VARCHAR(20),
    salary DECIMAL(10,2),
    joining_date DATE,
    remarks VARCHAR(255),
    FOREIGN KEY (movie_id) REFERENCES movie1(movie_id)
);


INSERT INTO  casting (movie_id,actor_id,actor_name,role_name,screen_time_minutes,payment,contract_start


