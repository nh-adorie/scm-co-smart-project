SELECT article, color FROM shirts;
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size = 'M';

SELECT * FROM shirts WHERE article = 'polo shirt';
UPDATE shirts 
SET 
    shirt_size = 'L' 
WHERE 
    article = 'polo shirt';

SELECT * FROM shirts WHERE last_worn = 10;
UPDATE shirts 
SET 
    last_worn = 0 
WHERE 
    last_worn = 10;

SELECT * FROM shirts WHERE color = 'white';
UPDATE shirts 
SET 
    shirt_size = 'M', 
    color = 'off white' 
WHERE 
    color = 'white';

SELECT * FROM shirts WHERE last_worn = 200;
DELETE FROM shirts WHERE last_worn = 200;

SELECT * FROM shirts WHERE article = 'tank top';
DELETE FROM shirts WHERE article = 'tank top';

DELETE FROM shirts;
DROP TABLE shirts;