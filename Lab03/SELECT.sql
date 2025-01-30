USE books;

-- 2.9
SELECT first_name, last_name FROM authors;
SELECT publisher_id FROM publishers;
SELECT book_id, title, total_pages, isbn FROM books;
SELECT book_id, author_id FROM book_authors ORDER BY author_id ASC;
SELECT DISTINCT book_id FROM book_authors;
SELECT book_id, title, total_pages, isbn FROM books ORDER BY total_pages, title;

-- 2.10
SELECT first_name, last_name FROM authors WHERE first_name = 'Linda';
SELECT publisher_id FROM publishers WHERE publisher_id = 1;
SELECT book_id, title, total_pages, isbn FROM books WHERE total_pages > 200;
SELECT book_id, author_id FROM book_authors WHERE author_id = 1;
SELECT * FROM books WHERE isbn IS NULL;
SELECT * FROM books WHERE isbn IS NOT NULL;SELECT DISTINCT book_id FROM book_authors;SELECT first_name, last_name FROM authors WHERE first_name = 'Michael' OR last_name = 'James';SELECT publisher_id, name FROM publishers WHERE publisher_id BETWEEN 1 AND 10;SELECT book_id, title, total_pages, isbn, publisher_id FROM books WHERE publisher_id IN(1, 10, 25, 30);
-- 2.11
SELECT first_name, last_name FROM authors WHERE first_name = 'Michael' OR last_name = 'James';
SELECT publisher_id FROM publishers WHERE publisher_id = 1 OR publisher_id = 2 ;
SELECT book_id, title, total_pages, isbn FROM books WHERE total_pages > 200 AND book_id > 10;
SELECT book_id, author_id FROM book_authors WHERE book_id = 1 AND author_id = 533;