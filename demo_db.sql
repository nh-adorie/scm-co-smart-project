-- Tạo database demo_db
CREATE DATABASE IF NOT EXISTS demo_db;
USE demo_db;

-- Tạo bảng users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    age INT
);

-- Thêm dữ liệu mẫu
INSERT INTO users (name, email, age) VALUES
    ('Alice', 'alice@example.com', 25),
    ('Bob', 'bob@example.com', 30),
    ('Charlie', 'charlie@example.com', 22);

-- Xem dữ liệu để kiểm tra
SELECT * FROM users;
