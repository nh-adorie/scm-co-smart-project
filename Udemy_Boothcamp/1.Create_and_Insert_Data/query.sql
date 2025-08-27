CREATE DATABASE IF NOT EXISTS pet_shop;
USE pet_shop;

CREATE TABLE IF NOT EXISTS cats
    (name VARCHAR(50),
    breed VARCHAR(50),
    age INT
    );

INSERT INTO cats (name, breed, age)
VALUES 
    ("sen", "pink", 2),
    ("adorie", "orange", 3),
    ("kitty", "white", 1);

-- thêm nhiều records thì dùng VALUES, 1 record thì dùng VALUE cũng được 




