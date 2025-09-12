CREATE DATABASE IF NOT EXISTS televisions;
USE televisions;

CREATE TABLE IF NOT EXISTS reviewers(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS series(
    id INT AUTO_INCREMENT,
    title VARCHAR(100),
    released_year YEAR,
    gerne VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS reviews(
    id INT AUTO_INCREMENT,
    rating DECIMAL(2,1),
    series_id INT,
    reviewer_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(series_id)
        REFERENCES series(id)
        ON DELETE CASCADE,
    FOREIGN KEY(reviewer_id)
        REFERENCES reviewers(id)
        ON DELETE CASCADE      
);
