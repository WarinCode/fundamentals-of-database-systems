CREATE DATABASE books
ON
(name =book_dat,
filename ='C:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bookdat.mdf'
)
LOG ON
( name =book_log,
filename ='C:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\booklog.ldf'
)
COLLATE thai_ci_as

-- CREATE DATABASE school COLLATE thai_ci_as