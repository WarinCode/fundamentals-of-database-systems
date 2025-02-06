USE books;

INSERT INTO books (book_id,title, total_pages)
VALUES (9999,'Kasetsart book', 1000)

SELECT title FROM books
LEFT JOIN book_authors ON books.book_id = book_authors.book_id
LEFT JOIN authors ON book_authors.author_id = authors.author_id 
WHERE authors.first_name IS NULL AND authors.last_name IS NULL

SELECT authors.first_name FROM authors
INNER JOIN book_authors ON authors.author_id = book_authors.author_id
INNER JOIN books ON book_authors.book_id = books.book_id
WHERE books.total_pages > 1000 AND books.rating > 4

SELECT title FROM books 
INNER JOIN publishers ON books.publisher_id = publishers.publisher_id
WHERE name IN('Microsoft Press', 'MIT', 'Wrox Press')