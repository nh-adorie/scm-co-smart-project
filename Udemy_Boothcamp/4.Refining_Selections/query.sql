-- DISTINCT
SELECT DISTINCT author_lname FROM books;
SELECT DISTINCT released_year FROM books;
SELECT DISTINCT CONCAT_WS(' ',author_fname,author_lname) AS author_fullname FROM books;

-- ORDER BY
SELECT title FROM books ORDER BY title ASC; 
SELECT author_lname FROM books ORDER BY author_lname DESC;
SELECT title, pages FROM books ORDER BY pages ASC;
SELECT title, released_year FROM books ORDER BY released_year DESC;
SELECT title, released_year FROM books ORDER BY 2 DESC;

SELECT author_fname, released_year, title 
FROM books
ORDER BY released_year DESC, author_fname;

SELECT CONCAT_WS(' ',author_fname,author_lname) AS author
FROM books 
ORDER BY author ASC;

-- LIMIT
SELECT book_id, title, released_year FROM books LIMIT 5;

SELECT book_id, title, released_year
FROM books
ORDER BY released_year DESC
LIMIT 10;

-- LIKE
SELECT title, author_fname, released_year
FROM books
WHERE released_year = 2003
ORDER BY title;

SELECT title, author_fname
FROM books
WHERE author_fname LIKE '%da%';

SELECT title FROM books WHERE title LIKE '%:%';

SELECT author_fname FROM books WHERE author_fname LIKE '____';

SELECT title FROM books WHERE title LIKE '%\%%';
SELECT title FROM books WHERE title LIKE '%\_%';

-- Refining Selection Exercise

-- Titles that contain 'stories'
SELECT title 
FROM books
WHERE title LIKE '%stories%';

-- The Longest Book
SELECT title, pages
FROM books
ORDER BY pages DESC
LIMIT 1;

-- Summary
SELECT
    CONCAT_WS(
        ' - ',
        title,
        released_year
    ) AS summary
FROM books
ORDER BY released_year DESC
LIMIT 3;

-- Books with author_lname contain a space
SELECT title, author_lname
FROM books
WHERE author_lname LIKE '% %';

-- Books with lowest stock
SELECT title, released_year, stock_quantity
FROM books
ORDER BY stock_quantity
LIMIT 3;

-- Title and auhtor_lname, sorted by author_lname and then title
SELECT title, author_lname
FROM books
ORDER BY author_lname, title;

-- Sored alphabetically by last name
SELECT UPPER(CONCAT(
    'My favourite author is ',
    author_fname,
    ' ',
    author_lname
    )) AS yell
FROM books
ORDER BY author_lname;