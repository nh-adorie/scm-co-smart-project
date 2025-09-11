-- NOT EQUAL !=
SELECT * FROM books WHERE released_year = 2017;
SELECT * FROM books WHERE released_year != 2017;

-- NOT LIKE
SELECT * FROM books WHERE title NOT LIKE '% %';

-- GREATER THAN >
SELECT * FROM books WHERE released_year > 2016;

-- LESS THAN OR EQUAL TO
SELECT * FROM books WHERE released_year <= 1999;

-- LOGICAL AND &&
SELECT * 
FROM books 
WHERE author_lname = 'Eggers'
AND released_year > 2017;

-- LOGICAL OR
SELECT title, pages FROM books
WHERE pages < 200 
OR title LIKE '%stories%';

-- BETWEEN
SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2014;

-- COMPARING DATES
SELECT * FROM people WHERE birthtime 
BETWEEN CAST('12:00:00' AS TIME) 
AND CAST('16:00:00' AS TIME);

-- The IN and NOT IN operator
SELECT title, author_lname FROM books
WHERE author_lname = 'Carver' 
OR author_lname = 'Lahiri'
OR author_lname = 'Smith';
 
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
 
SELECT title, author_lname FROM books
WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

-- CASE
SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books;

SELECT title, released_year,
CASE
	WHEN released_year >= 2000 THEN 'modern lit'
    ELSE '20th century lit' 
END AS genre
FROM books;

-- IS NULL

-- Exercise
-- Select all books written before 1980
SELECT * FROM books WHERE released_year < 1980;

-- Select all books written by Eggers or Chabon
SELECT * FROM books WHERE author_lname IN ('Eggers', 'Chabon');

-- Select all books written by Lahiri, published after 2000
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- Select all books with page counts btw 100 - 200
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

-- Select all books where author_lname starts with C or S
SELECT * FROM books WHERE author_lname IN ('C', 'S');

-- Case
SELECT title, author_lname,
CASE 
    WHEN title LIKE '%stories%' THEN 'Short Story'
    WHEN title IN ('Just Kids', 'A Heartbreaking Work') THEN 'Memoir'
    ELSE 'Novel'
END AS type
FROM books;

-- Count total books
SELECT 
    author_fname,
    author_lname,
    CONCAT(
        COUNT(*),
        CASE 
            WHEN COUNT(*) = 1 THEN ' book'
            ELSE ' books'
        END 
    ) AS 'COUNT'
FROM books 
GROUP BY author_fname, author_lname;