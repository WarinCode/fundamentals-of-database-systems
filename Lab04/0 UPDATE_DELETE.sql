USE books;

SELECT publisher_id, name FROM publishers;

INSERT INTO publishers VALUES
(242, 'Cu Books'),
(243, 'Ku Books');

UPDATE publishers SET name = 'CU PRESS' WHERE publisher_id = 242;
DELETE publishers WHERE publisher_id = 242;

SELECT * FROM authors;

INSERT INTO authors(author_id, first_name, last_name) VALUES
	(1389, 'ABC', 'DEF')

UPDATE authors SET first_name = 'Warin', last_name = 'Saipanya' WHERE author_id = 1389;

DELETE FROM authors WHERE author_id = 1389;

SELECT TOP 10 * FROM authors ORDER BY author_id DESC;
SELECT TOP 5 * FROM authors ORDER BY author_id DESC;

