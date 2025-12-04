CREATE database products;
use products;

CREATE TABLE customers(
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(30),
    customer_phone VARCHAR(20)
);

CREATE TABLE products_1(
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100),
    product_price INT
);

CREATE TABLE orders(
 order_id INT PRIMARY KEY auto_increment,
 customer_id INT,
 product_id INT,
 order_date DATE,
 FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
 FOREIGN KEY (product_id) REFERENCES products_1(product_id)

);

select customer_name,product_name,order_date from customers as c inner join orders as o  on c.customer_id = o.customer_id inner join products_1 as p on o.product_id = p.product_id;

select customer_phone ,product_price from customers as c inner join orders as o on c.customer_id = o.order_id inner join products_1 as p on o.product_id = p.product_id;

select customer_name,product_name  from customers as c left join orders as o on c.customer_id = o.order_id left join products_1 as p on o.product_id = p.product_id ;

INSERT INTO customers (customer_name, customer_phone) VALUES ('Arun', '9876543210'),('Divya', '9123456780'),('Karthik', '9001234567'),('Meena', '8098765432'),('Suresh', '8899776655');

INSERT INTO products_1 (product_name, product_price) VALUES ('Laptop', 55000),('Keyboard', 1200),('Mouse', 600),('Monitor', 9000),('Headphones', 1500);

INSERT INTO orders (customer_id, product_id, order_date) VALUES(1, 1, '2025-01-10'),(2, 3, '2025-01-12'),(1, 4, '2025-01-15'),(4, 2, '2025-01-20'),(5, 5, '2025-01-25');

CREATE TABLE student (
   student_id INT PRIMARY KEY AUTO_INCREMENT,
   student_name VARCHAR(20)
   
);

CREATE TABLE course (
   course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    teacher VARCHAR(100)
);

CREATE TABLE student_course (
   student_id INT,
   course_id INT,
   FOREIGN KEY (student_id) REFERENCES student(student_id),
   FOREIGN KEY (course_id) REFERENCES course(course_id)
);


