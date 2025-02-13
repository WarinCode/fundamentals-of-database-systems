USE books;

SELECT name FROM publishers UNION SELECT first_name FROM authors
SELECT name FROM publishers UNION ALL SELECT first_name FROM authors

SELECT book_id, title, total_pages FROM books WHERE title LIKE 'The%';
SELECT book_id, title, total_pages FROM books WHERE title LIKE '%computer%';

SELECT first_name FROM authors WHERE first_name LIKE '_ar%';
SELECT first_name FROM authors WHERE first_name LIKE '_[aei]r%';
SELECT first_name FROM authors WHERE first_name LIKE '_[^a]r%';

SELECT book_id, title, name INTO book_details FROM books
LEFT JOIN publishers ON books.publisher_id = publishers.publisher_id
WHERE books.publisher_id = 5;

INSERT INTO book_details
SELECT book_id, title, name FROM books
LEFT JOIN publishers ON books.publisher_id = publishers.publisher_id
WHERE title LIKE 'The_%';

SELECT book_id, title, name FROM books 
LEFT JOIN publishers ON books.publisher_id = publishers.publisher_id
WHERE books.publisher_id IN 
(SELECT publisher_id FROM publishers WHERE name LIKE '%Press%');