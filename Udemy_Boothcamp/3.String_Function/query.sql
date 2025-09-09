SELECT 
    CONCAT(author_fname,' ',author_lname) AS full_name 
FROM books;


SELECT 
    CONCAT_WS(' ', author_fname,author_lname) AS full_name 
FROM books;


SELECT 
    SUBSTRING(title,1,15) AS short_title  
FROM books;


SELECT 
    SUBSTR(title,1,15) AS short_title  
FROM books;


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


SELECT
    REPLACE(
        title,
        ' ',
        '_'
    )
FROM books;


SELECT REVERSE(author_fname) FROM books;