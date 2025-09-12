-- #1 CHALLENGE
SELECT 
    series.title, 
    reviews.rating
FROM reviews
JOIN series ON reviews.series_id = series.id;

-- #2 CHALLENGE
SELECT 
    series.title,
    ROUND(AVG(reviews.rating),2 ) AS avg_rating
FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY series.title
ORDER BY avg_rating;

-- #3 CHALLENGE
SELECT
    reviewers.first_name,
    reviewers.last_name,
    reviews.rating
FROM reviews
JOIN reviewers ON reviews.reviewer_id = reviewers.id;

-- #4 CHALLENGE
SELECT 
    series.title AS unreviewed_series
FROM series
LEFT JOIN reviews ON reviews.series_id = series.id
WHERE reviews.series_id IS NULL;

SELECT 
    series.title AS unreviewed_series
FROM reviews
RIGHT JOIN series ON reviews.series_id = series.id
WHERE reviews.series_id IS NULL;

-- #5 CHALLENGE
SELECT 
    gerne,
    ROUND(AVG(reviews.rating), 2) AS avg_rating
FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY gerne;

-- #6 CHALLENGE
SELECT
    reviewers.first_name,
    reviewers.last_name,
    IFNULL(COUNT(reviews.rating), 0) AS 'COUNT',
    IFNULL(MIN(reviews.rating), 0) AS 'MIN',
    IFNULL(MAX(reviews.rating), 0) AS 'MAX',
    IFNULL(ROUND(AVG(reviews.rating), 2), 0) AS 'AVG',
    CASE
        WHEN COUNT(reviews.rating) >= 10 THEN 'POWERUSER'
        WHEN COUNT(reviews.rating) > 0 THEN 'ACTIVE'
        ELSE 'INACTIVE'
    END AS 'STATUS'
FROM reviewers
LEFT JOIN reviews ON reviews.reviewer_id = reviewers.id
GROUP BY reviewers.first_name, reviewers.last_name;

-- #7 CHALLENGE
SELECT
    series.title,
    reviews.rating,
    CONCAT_WS(' ', reviewers.first_name, reviewers.last_name) AS reviewer
FROM reviews
JOIN reviewers ON reviews.reviewer_id = reviewers.id  
JOIN series ON reviews.series_id = series.id
ORDER BY series.title;