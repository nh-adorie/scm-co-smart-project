CREATE DATABASE IF NOT EXISTS pet_shop;
USE pet_shop;

CREATE TABLE IF NOT EXISTS cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 
