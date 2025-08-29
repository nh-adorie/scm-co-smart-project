CREATE DATABASE IF NOT EXISTS shirts_db;
USE shirts_db;
CREATE TABLE IF NOT EXISTS shirts(
    shirt_id INT AUTO_INCREMENT,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(1),
    last_worn INT,
    PRIMARY KEY(shirt_id)
);