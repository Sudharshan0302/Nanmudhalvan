CREATE DATABASE testDb;
SHOW DATABASES;
CREATE TABLE testDb.marks(ID integer, Name varchar (100), Marks integer);
SELECT * FROM testDb.marks;
INSERT INTO testDb.marks
VALUES ('001','Akash','97');
SELECT * FROM testDb.marks;
ALTER TABLE testDb.marks
ADD PRIMARY KEY(ID);
DESCRIBE testDb.marks;
DESCRIBE testDb.marks ID;
CREATE INDEX new_index
ON testDb.marks(Name);
SELECT * FROM testDb.marks
SELECT Name FROM testDb.marks
WHERE marks > 80;
SELECT COUNT(*)
FROM testDb.marks;
INSERT INTO testDb.marks
VALUES ('002','Abhi','74');
SELECT * FROM testDb.marks
ORDER BY name DESC;
