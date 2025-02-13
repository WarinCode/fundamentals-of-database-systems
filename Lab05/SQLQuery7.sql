SELECT MAX(rating) AS MAX_RATING,
MIN(rating) AS MIN_RATING,
SUM(total_pages) AS SUM_PAGES,
AVG(total_pages) AS AVERAGE_PAGES,
COUNT(book_id) AS NUMBER_OF_BOOKS
FROM books

SELECT Year(published_date) AS PUB_YEAR,
COUNT(book_id) AS NUM_BOOKS,
MAX(total_pages) AS PAGES FROM books
GROUP BY Year(published_date)
ORDER BY Year(published_date) DESC

SELECT Year(published_date) AS PUB_YEAR,
COUNT(book_id) AS NUM_BOOKS,
AVG(rating) AS AVG_RATING FROM books
WHERE published_date BETWEEN '2001-01-01' AND '2020-12-31'
GROUP BY Year(published_date)
ORDER BY Year(published_date) DESC

SELECT publishers.publisher_id, name, 
COUNT(book_id) AS COUNT_BOOKS,
AVG(rating) AS AVG_RATING
FROM books
INNER JOIN publishers ON books.publisher_id = publishers.publisher_id
GROUP BY publishers.publisher_id, name
HAVING COUNT(book_id) >= 30 AND AVG(rating) > 4.00
ORDER BY COUNT_BOOKS DESC

SELECT book_authors.author_id, 
CONCAT(first_name, ' ', last_name) AS AUTHOR_NAME,
COUNT(books.book_id) AS COUNT_BOOKS FROM books
INNER JOIN book_authors ON books.book_id = book_authors.book_id
INNER JOIN authors ON book_authors.author_id = authors.author_id
GROUP BY book_authors.author_id, CONCAT(first_name, ' ', last_name)
HAVING COUNT(books.book_id) > 4
ORDER BY COUNT(books.book_id) DESC;