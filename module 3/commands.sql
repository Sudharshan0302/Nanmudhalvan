


CREATE DATABASE testdb;

-- Show all databases
SHOW DATABASES;

-- create a table marks
CREATE TABLE testdb.Marks(ID integer, Name varchar (100), Marks integer);

-- Print the table
SELECT*FROM testdb.Marks;

-- insert data into table
INSERT INTO testdb.Marks 
VALUES(001,'kavi',70);

-- Print the table
SELECT*FROM testdb.Marks;

-- Add a column
ALTER TABLE testdb.Marks
ADD Mentor varchar(100);

-- Printt the table
SELECT*FROM testdb.Marks;

-- Add a primary key
ALTER TABLE  testdb.Marks
ADD PRIMARY KEY(ID);

-- Describe the table
DESCRIBE testdb.Marks;

-- DEscribr the columnof a table
DESCRIBE testdb.Marks ID;

-- To create an index
CREATE INDEX new_index
ON testdb.Marks(Name);

SELECT*FROM testdb.Marks;

--  where clause
SELECT Name
FROM testdb.Marks
WHERE Marks < 80;

-- count total rows ina table
SELECT COUNT(*)
FROM testdb.Marks;

INSERT INTO testdb.Marks
VALUES (002,'kakj',90,'jai');
INSERT INTO testdb.Marks
VALUES (003,'fgshd',89,'arjun');
SELECT*FROM testdb.Marks;

-- order by clause
SELECT*FROM testdb.Marks
ORDER BY NAME DESC;