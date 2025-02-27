USE books;

ALTER TABLE Authors
ADD Email varchar(255), DateOfBirth DATE;

ALTER TABLE Authors
ALTER COLUMN DateOfBirth datetime;

ALTER TABLE Authors
DROP COLUMN DateOfBirth;

ALTER TABLE Authors
ALTER COLUMN first_name varchar(100) NOT NULL;

ALTER TABLE books
ADD CONSTRAINT UC_books UNIQUE(book_id, isbn);

ALTER TABLE books
ADD CHECK (rating >= 0 AND rating <= 5);

ALTER TABLE books
ADD CONSTRAINT CHK_TotalPages CHECK(Total_pages >= 0);

ALTER TABLE authors
ADD CONSTRAINT df_email
DEFAULT 'someone@gmail.com' FOR Email;

INSERT INTO authors(author_id, first_name, last_name)
VALUES(10000, 'someone','special');

SELECT * FROM  authors ORDER BY author_id DESC;

USE books
CREATE TABLE book_copies(
	copy_id INT NOT NULL,
	book_id INT NOT NULL,
	price money NULL
);

ALTER TABLE book_copies
ADD CONSTRAINT PK_bookcopy
PRIMARY KEY (copy_id);

ALTER TABLE book_copies
ADD CONSTRAINT FK_bookCopy
FOREIGN KEY (book_id) REFERENCES books(book_id);