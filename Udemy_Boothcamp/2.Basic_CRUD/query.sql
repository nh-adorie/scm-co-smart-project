-- Mặc dù trong dtb là Egg nhưng viết là EGG thì vẫn match được
-- Có thể thêm điều kiện để xét cả viết hoa, thường, còn mặc định thì case insensitive ^_^
SELECT * from cats WHERE name = "EGG";

-- Nội dung sau WHERE chạy trước
SELECT name FROM cats WHERE age = 4;

