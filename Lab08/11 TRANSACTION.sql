USE master
CREATE DATABASE TestDB
GO

USE TestDB
CREATE TABLE TestTable 
(
	ID INT NOT NULL,
	Value INT NOT NULL,
	PRIMARY KEY (ID)
)
GO

INSERT INTO TestTable 
	VALUES (0, 1000),
		   (1, 2000);

TRUNCATE TABLE TestTable;

BEGIN TRANSACTION;
INSERT INTO TestTable(ID, Value) VALUES (1, 10);
COMMIT TRANSACTION;

BEGIN TRANSACTION;
INSERT INTO TestTable(ID, Value) VALUES (2, 20);
DELETE FROM TestTable WHERE ID = 1;
ROLLBACK TRANSACTION

SELECT * FROM TestTable;
