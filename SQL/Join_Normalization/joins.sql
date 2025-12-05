CREATE DATABASE developers;
use developers;

CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(20),
  user_email VARCHAR(30)
  
);
ALTER  TABLE users ADD column user_course VARCHAR(30);

CREATE TABLE technical(
 technical_id INT PRIMARY KEY AUTO_INCREMENT,
 user_id INT,
 FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE communication (
communication_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(user_id)

);
CREATE TABLE aptitude (
aptitude_id INT PRIMARY KEY AUTO_INCREMENT,
user_id INT,
FOREIGN KEY (user_id) REFERENCES users(user_id)

);
INSERT INTO communication (user_id) VALUES
(1);

SELECT * FROM users as U inner join communication AS C on U.user_id = C.user_id;

select user_id,count(*) from users group by user_id having user_id > 5;




