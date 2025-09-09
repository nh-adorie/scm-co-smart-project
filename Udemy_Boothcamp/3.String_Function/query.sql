-- Khi chạy SELECT 'adorie'; hay SELECT 1+4;
-- Sẽ hiện ra kết quả là 'adorie' hay 5
-- Có thể hiểu SELECT giống như "Hãy chọn những cái này cho tôi xem"

SELECT 
    CONCAT(author_fname,' ',author_lname) AS full_name 
FROM books;
-- Chỉ tạo ra cột mới cho mình xem chứ không làm thay đổi dtb gốc (vì nó nằm trong câu SELECT - chỉ truy vấn dữ liệu thui)

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

-- Có thể cài thêm extention SQL Formatter trong VS Code để nó tự format SQL Code cho đẹp
