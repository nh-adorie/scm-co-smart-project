CREATE DATABASE IF NOT EXISTS people;
USE people;
CREATE TABLE IF NOT EXISTS info(
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT
);
-- INSERT INTO info (first_name, last_name, age)
-- VALUES
--     ("adorie", "kitty", 10),
--     ("cinamon","cake",7);

CREATE DATABASE IF NOT EXISTS pet_shop;
USE pet_shop;
CREATE TABLE IF NOT EXISTS cats(
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

-- INSERT INTO cats(name, breed, age)
-- VALUES 
--     ("cinamon", "cake", 5);

-- insert null value :D ?
-- INSERT INTO cats(name)
-- VALUES("cinamon");

-- Thêm NOT NULL vào rồi thì không thể insert null value vào nữa, sẽ báo lỗi
-- Khi DESC cats_test thì cột NULL sẽ hiển thị thành NO

CREATE TABLE IF NOT EXISTS cats_test
    (name VARCHAR(50) NOT NULL,
    age INT NOT NULL
    );

-- INSERT INTO cats_test (name)
-- VALUES ("hello");

-- INSERT INTO cats_test (name, age)
-- VALUES ("anna's cat", 10);


-- Thêm DEFAULT vào thì sẽ setup được giá trị mặc định nếu không điền gì
-- Có thể để DEFAULT là NULL ^_^
CREATE TABLE IF NOT EXISTS cats3
    (name VARCHAR(50) DEFAULT 'unnamed',
    age INT DEFAULT 99
    );

-- INSERT INTO cats3 (name)
-- VALUES ('new cat');

-- INSERT INTO cats3 ()
-- VALUES();

-- CÓ thể kết hợp cả NOT NULL và DEFAULT
CREATE TABLE IF NOT EXISTS cats4  (    
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',    
    age INT NOT NULL DEFAULT 99 
);

-- THêm Primary Key
CREATE TABLE IF NOT EXISTS unique_cats(
    catID INT NOT NULL PRIMARY KEY,
    name VARCHAR(20),
    age INT
);

-- Cũng có thể viết là
CREATE TABLE IF NOT EXISTS unique_cats(
    catID INT NOT NULL,
    name VARCHAR(20),
    age INT,
    PRIMARY KEY(catID)
);
-- Khi đã là primary key thì không thể null nên không cần setup NOT NULL cũng được

CREATE TABLE IF NOT EXISTS auto_cats(
    catID INT AUTO_INCREMENT,
    name VARCHAR(10),
    PRIMARY KEY (catID)
);

-- INSERT INTO auto_cats(name)
-- VALUES
--     ("kitty"),
--     ("happy"),
--     ("adorie");

CREATE DATABASE IF NOT EXISTS final_excercise;
USE final_excercise;
CREATE TABLE IF NOT EXISTS employees(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    age INT NOT NULL,
    current_status VARCHAR(50) NOT NULL DEFAULT 'employed',
    PRIMARY KEY (id)
);

INSERT INTO employees (first_name, last_name, age, current_status)
VALUES
    ("cat", "big", 5, "fired"),
    ('dog','small',5,'employeed'),
    ('fish','cute',4,'employedd');

