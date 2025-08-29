-- Mặc dù trong dtb là Egg nhưng viết là EGG thì vẫn match được
-- Có thể thêm điều kiện để xét cả viết hoa, thường, còn mặc định thì case insensitive ^_^
SELECT * from cats WHERE name = "EGG";

-- Nội dung sau WHERE chạy trước
SELECT name FROM cats WHERE age = 4;

-- Rapid Fire Exercise
select cat_id, age from cats where cat_id = age;
select name, age from cats where breed = "Tabby";
select name, breed from cats;
select cat_id from cats;

-- Using Aliases: Trong dtb vẫn giữ nguyên tên ban đầu, dùng alias chỉ thay đổi lúc print kết quả ra thôi ^_^
select cat_id as ID from cats;
-- mặc dù đã dùng alias ở trước đó, nhưng ở clause WHERE máy vẫn chỉ hiểu nếu dùng đúng là cat_id thui
select cat_id as ID, name from cats where cat_id = age;

-- UPDATE Exercise:
UPDATE cats SET name = 'Jack' WHERE name = 'Jackson';
UPDATE cats SET breed = 'British Shorthair' WHERE name = 'Ringo';
UPDATE cats SET age = 12 WHERE breed = 'Maine Coon';

- DELETE Exercise:
DELETE FROM cats WHERE age = 4;
DELETE FROM cats WHERE cat_id = age;
DELETE FROM cats WHERE cat_id = age;

