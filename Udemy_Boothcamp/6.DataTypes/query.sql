-- CHAR and VARCHAR
-- INT, SMALLINT, TINYINT, MEDIUMINT, BIGINT
-- DECIMAL
-- FLOAT and DOUBLE
-- DATE and TIME and DATETIME
-- CURDATE, CURTIME, NOW
-- DAYOFMONTH, DAYOFWEEK, DAYOFYEAR, MONTHNAME, YEAR
-- HOUR, MINUTE, SECOND
-- DATE_FORMAT, TIME_FORMAT

-- Create a good use case for CHAR
CREATE TABLE IF NOT EXISTS country(
    abbre CHAR(2)
)

-- Fill the blank
CREATE TABLE inventory(
    item_name VARCHAR(10),
    price FLOAT,
    quantity INT
);

-- Difference btw DATETIME and TIMESTAMP

-- Print out the current time
SELECT CURTIME();

-- Print out the current date
SELECT CURDATE();

-- Print out the current Day of week
SELECT DAYOFWEEK(NOW());

-- Print out the current day and time using mm/dd/yy format
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');

-- Print out the current day and time using format
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

-- Create tweets table that stores
CREATE TABLE IF NOT EXISTS tweets(
    user_name VARCHAR(16),
    content VARCHAR(180),
    posted_time TIMESTAMP DEFAULT NOW()
);