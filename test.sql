CREATE DATABASE IF NOT EXISTS test_db;
USE test_db;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);
INSERT INTO users (name, email) VALUES ('Nguyen Van A', 'nguyenvana@example.com');
INSERT INTO users (name, email) VALUES ('Tran Thi B', 'tranthib@example.com');
INSERT INTO users (name, email) VALUES ('Le Van C', 'levanc@example.com');

SELECT * FROM users;
