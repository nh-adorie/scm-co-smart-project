CREATE DATABASE IF NOT EXISTS pet_shop;
USE pet_shop;
-- Sau khi CREATE DATABASE xong phải USE thì những bước tiếp theo mới thực hiện ở dtb đó

CREATE TABLE IF NOT EXISTS cat_info
    (
        name VARCHAR(100),
        breed VARCHAR(100),
        age INT
    );



