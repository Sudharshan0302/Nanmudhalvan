DROP DATABASE testDb;
CREATE DATABASE testDb;
SHOW DATABASES;
CREATE TABLE testDb.members
(
members_id INT,
name VARCHAR(100)
);
SELECT * FROM testDb.members;
CREATE TABLE testDb.committers
(
committers_id INT,
name VARCHAR(100)
);
SELECT * FROM testDb.committers;
INSERT INTO testDb.members
VALUES (1, 'John'), (2,'Jane'), (3, 'Mary'), (4,'David'), (5,'Amelia');
INSERT INTO testDb.committers
VALUES (1, 'John'), (2, 'Mary'), (3,'Amelia'), (4,'Joe');
SELECT m.members_id, m.name AS member, c.committers_id, c.name AS Committers
FROM testDb.members m
INNER JOIN testDb.committers c ON c.name = m.name;
SELECT m.members_id, m.name AS member, c.committers_id, c.name AS Committers
FROM testDb.members m
LEFT JOIN testDb.committers c USING(name);

SELECT m.members_id, m.name AS member, c.committers_id, c.name AS Committers
FROM testDb.members m
RIGHT JOIN testDb.committers c ON c.name = m.name;

SELECT m.members_id, m.name AS member, c.committers_id, c.name AS Committers
FROM testDb.members m
CROSS JOIN testDb.committers c USING(name);

SELECT * FROM testDb.members
WHERE name LIKE 'A%';

SELECT * FROM testDb.members
WHERE name LIKE '%A';

DELIMITER //
CREATE PROCEDURE testDb.get_members_info()
BEGIN 
SELECT * FROM testDb.members;
END//

DELIMITER ;

CALL testDb.get_members_info();


