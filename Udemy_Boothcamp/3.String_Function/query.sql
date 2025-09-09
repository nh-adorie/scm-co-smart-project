-- CONCAT()
SELECT 
    CONCAT(author_fname,' ',author_lname) AS full_name 
FROM books;

SELECT 
    CONCAT_WS(' ', author_fname,author_lname) AS full_name 
FROM books;

--SUBSTRING() // SUBSTR()
SELECT 
    SUBSTRING(title,1,15) AS short_title  
FROM books;

SELECT 
    SUBSTR(title,1,15) AS short_title  
FROM books;

--Combine CONCAT and SUBSTRING
SELECT 
    CONCAT(
        SUBSTRING(title, 1, 10),
        '...'
    ) AS short_title
FROM books;

SELECT 
    CONCAT_WS(
        '.',
        SUBSTRING(author_fname,1,1),
        SUBSTRING(author_lname,1,1)
    ) AS authors_initials
FROM books;

-- REPLACE()
SELECT
    REPLACE(
        title,
        ' ',
        '_'
    )
FROM books;

-- Other String Functions

SELECT REVERSE(author_fname) FROM books;

SELECT CHAR_LENGTH(title) FROM books;

SELECT UPPER(title) FROM books;

SELECT LOWER(title) FROM books;

SELECT CONCAT('I LOVE ',UPPER(title)) FROM books;

SELECT INSERT('adorie ',7,0,'cat');

SELECT LEFT('adorie',2);

SELECT RIGHT('adorie',2);

SELECT REPEAT('adorie ',3);

SELECT TRIM('   adorie   ');

-- String Functions Exercise

SELECT UPPER(REVERSE('Why does my cat look at me with such hatred?'));

SELECT REPLACE(title,' ','->') FROM books;

SELECT 
    author_lname AS forwards,
    REVERSE(author_lname) AS backwards
FROM books;

SELECT UPPER(
    CONCAT_WS(' ',author_fname,author_lname) 
) AS `full name in caps`
FROM books;

SELECT CONCAT_WS(
    ' ',
    title,
    'was released in',
    released_year
) AS blurb
FROM books;

SELECT 
    title,
    CHAR_LENGTH(title) AS character_count
FROM books;

SELECT
    CONCAT(SUBSTRING(title,1,10),'...') AS short_title,
    CONCAT_WS(',',author_fname,author_lname) AS author,
    CONCAT(stock_quantity,' in stock') AS quantity
FROM books;

