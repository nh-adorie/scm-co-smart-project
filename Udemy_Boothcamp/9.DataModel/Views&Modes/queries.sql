-- CREATE VIEW
CREATE VIEW full_reviews AS
SELECT title, released_year, gerne, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SELECT * FROM full_reviews;

-- UPDATE / REPLACE / ALTER / DROP VIEW
CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;
 
CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;
 
ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;
 
DROP VIEW ordered_series;

-- GROUP BY HAVING
SELECT 
    title, 
    AVG(rating),
    COUNT(rating) AS review_count
FROM full_reviews 
GROUP BY title HAVING COUNT(rating) > 1;

-- GROUP BY WITH ROLLUP
SELECT title, AVG(rating)
FROM full_reviews
GROUP BY title WITH ROLLUP;
 
SELECT title, COUNT(rating)
FROM full_reviews
GROUP BY title WITH ROLLUP;
 
SELECT 
    first_name, 
    released_year, 
    genre, 
    AVG(rating)
FROM full_reviews
GROUP BY released_year , genre , first_name WITH ROLLUP;

-- SQL MODES
SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;

SET GLOBAL sql_mode = 'modes';
SET SESSION sql_mode = 'modes';

-- STRICT_TRANS_TABLES

-- Others MODES
