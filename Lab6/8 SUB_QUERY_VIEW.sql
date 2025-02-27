SELECT title, total_pages FROM books 
WHERE total_pages > (SELECT AVG(total_pages) FROM books);

SELECT title, total_pages FROM books 
INNER JOIN publishers ON books.publisher_id = publishers.publisher_id
WHERE name IN 
(SELECT name FROM publishers WHERE name LIKE '%Press%');

CREATE VIEW LargeBooks AS SELECT book_id, title, total_pages FROM books 
WHERE total_pages > 1000;

SELECT title, total_pages FROM LargeBooks;

CREATE VIEW AllBooks AS SELECT books.book_id, title, total_pages, 
isbn, CONCAT(first_name, ' ', last_name) AS FullName, name FROM books
INNER JOIN book_authors ON books.book_id = book_authors.book_id
INNER JOIN authors ON book_authors.author_id = authors.author_id
INNER JOIN publishers ON books.publisher_id = publishers.publisher_id