-- COUNT
SELECT COUNT(*) FROM books;
SELECT COUNT(author_fname) FROM books;
SELECT COUNT(DISTINCT author_fname) FROM books;
SELECT COUNT(DISTINCT author_lname) FROM books;
SELECT COUNT(*)
    FROM books
    WHERE title LIKE '%the%';

-- GROUP BY
SELECT author_fname
FROM books
GROUP BY author_fname;

SELECT 
    author_fname, 
    COUNT(*) AS book_written FROM books GROUP BY author_fname;

SELECT 
    released_year,
    COUNT(*) AS books_released_that_year FROM books GROUP BY released_year;

-- MIN and MAX
SELECT MIN(released_year) FROM books;
SELECT MAX(pages) FROM books;
SELECT MIN(author_fname), MAX(author_lname) FROM books;

-- MAX là một hàng tổng hợp - aggregate function (đi qua tất cả các dòng rồi đưa ra kết luận); 
-- WHERE là điều kiện lọc từng dòng (đi qua từng dòng một)
-- Vì vậy không thể để MAX vào trong WHERE được!
-- ==> Dùng SUBQUERIS

-- SAI
SELECT title, pages FROM books WHERE pages = MAX(pages);

-- ĐÚNG
SELECT title, pages FROM books
WHERE pages = (
    SELECT MAX(pages) 
    FROM books
);

SELECT title, released_year FROM books
WHERE released_year = (
    SELECT MIN(released_year)
    FROM books
);

-- GROUP BY MULTIPLE COLUMNS
SELECT
    author_fname,
    author_lname,
    COUNT(*) AS book_written
FROM books
GROUP BY author_fname, author_lname;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    COUNT(*) AS book_written
FROM books
GROUP BY author;

-- MIN and MAX with GROUP BY
-- Find the first year each author published their first book
SELECT 
    author_fname
    author_lname, 
    MIN(released_year) AS earliest_release,
    MAX(released_year) AS latest_release,
    COUNT(*) AS books_written
FROM books
GROUP BY author_fname, author_lname;

-- Find the longest page count for each author
SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    MAX(pages) AS longest_page_count
FROM books
GROUP BY author;

-- SUM
SELECT SUM(pages) FROM books;
SELECT 
    author_fname,
    SUM(pages) AS pages_written
FROM books
GROUP BY author_fname;

-- AVG
SELECT AVG(pages) FROM books;

-- Calculate the average stock quantity for books released in the same year
SELECT
    released_year,
    AVG(stock_quantity) AS avergae_stock,
    COUNT(*) AS book_count
FROM books
GROUP BY released_year;


-- Aggregate Function Exercises

--Print the number of books in the dtb
SELECT COUNT(*) FROM books; 

-- Print out how many books were released in each year
SELECT
    released_year,
    COUNT(*) AS books_count
FROM books
GROUP BY released_year;

-- Print out the total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- Find the average released_year for each author
SELECT
    CONCAT(author_fname,' ',author_lname) AS author,
    AVG(released_year)
FROM books
GROUP BY author;

-- Find the full name of author who wrote the longest book
SELECT 
    CONCAT(author_fname,' ',author_lname) AS author,
    title,
    pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- Find how many books released that year, and ave pages
SELECT 
    released_year AS year,
    COUNT(*) AS `# books`,
    AVG(pages) AS `avg pages`
FROM books
GROUP BY year
ORDER BY year;