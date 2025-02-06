USE books;

SELECT book_id, title, total_pages, books.publisher_id, name
FROM books INNER JOIN publishers ON books.publisher_id = publishers.publisher_id;

SELECT book_id, title, total_pages, books.publisher_id, name
FROM books LEFT JOIN publishers ON books.publisher_id = publishers.publisher_id;

SELECT book_id, title, total_pages, books.publisher_id, name
FROM books RIGHT JOIN publishers ON books.publisher_id = publishers.publisher_id;

SELECT book_id, title, total_pages, books.publisher_id, name
FROM books FULL JOIN publishers ON books.publisher_id = publishers.publisher_id;

SELECT book_id, title, total_pages, books.publisher_id, name
FROM books CROSS JOIN publishers;

SELECT books.book_id, title, total_pages, book_authors.author_id, first_name, last_name 
FROM books 
INNER JOIN book_authors ON books.book_id = book_authors.book_id 
INNER JOIN authors ON book_authors.author_id = authors.author_id;

SELECT books.book_id, title, total_pages, book_authors.author_id, first_name, last_name 
FROM books 
RIGHT JOIN book_authors ON books.book_id = book_authors.book_id 
RIGHT JOIN authors ON book_authors.author_id = authors.author_id;

SELECT books.book_id, title, total_pages, isbn, book_authors.author_id, first_name, last_name 
FROM books 
RIGHT JOIN book_authors ON books.book_id = book_authors.book_id 
RIGHT JOIN authors ON book_authors.author_id = authors.author_id 
WHERE isbn IS NULL;

SELECT book_id, title, rating, isbn, name FROM books 
RIGHT JOIN publishers ON books.publisher_id = publishers.publisher_id 
WHERE rating > 4 OR isbn IS NOT NULL 
ORDER BY rating DESC; 
