USE library;
SELECT * FROM book;
UPDATE book SET author_surname = 'Bodnar' WHERE id IN (1,3);
SELECT COUNT(*) FROM book WHERE rewards IS NOT NULL;
SELECT * FROM book WHERE pages = (SELECT MIN(pages) FROM book);
SELECT MAX(pages) FROM book;
-- ALTER TABLE book ADD COLUMN price INT DEFAULT '0';
UPDATE book SET price = '300' WHERE id IN (1,3,5);
UPDATE book SET price = '100' WHERE id IN (2,4,5);
UPDATE book SET price = '500' WHERE id IN (7,8,9,10);
SELECT AVG(price) FROM book;
SELECT SUM(price) FROM book WHERE category = 'драма';
SELECT MIN(price) FROM book;
SELECT * FROM book WHERE title LIKE '%lorem%';
SELECT * FROM book WHERE title LIKE '%B';
SELECT * FROM book WHERE title LIKE 'm%';
SELECT * FROM book WHERE price BETWEEN '50' AND '120';
SELECT * FROM book WHERE price NOT BETWEEN '200' AND '600';
DELETE FROM book WHERE title = 'BOX';
DELETE FROM book WHERE id = '3';
DELETE FROM book WHERE isbn = '123123-1212-1';



 