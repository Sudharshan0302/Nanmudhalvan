CREATE DATABASE Carbon_Emission;

DROP TABLE Carbon_Emission.Users;

CREATE TABLE Carbon_Emission.Users (
UID INT PRIMARY KEY,
Name VARCHAR(50),
Email VARCHAR(100),
Password VARCHAR(100)
);

SELECT *
FROM Carbon_Emission.Users;

INSERT INTO Carbon_Emission.Users
VALUES(1, 'Jai', 'jai.j@gmail.com', 'jai.j'),
	(2, 'vijay', 'vijay.v@gmail.com', 'vijay.v');
    
SELECT *
FROM Carbon_Emission.Users;

CREATE TABLE Carbon_Emission.Transportation (
TID INT PRIMARY KEY,
UID INT NOT NULL,
Model VARCHAR (50) NOT NULL,
Method VARCHAR (50) NOT NULL,
Trans_ce DEC(3,2)
);

SELECT *
FROM Carbon_Emission.Transportation;

INSERT INTO Carbon_Emission.Transportation
VALUES(1, 1, 'Truck', 'Road', 1.98),
(2, 2, 'Van', 'Road', 4.55);

SELECT *
FROM Carbon_Emission.Transportation;

CREATE TABLE Carbon_Emission.Energy (
EID INT PRIMARY KEY,
UID INT NOT NULL,
energy_con INT NOT NULL,
energy_ce DEC(3,2)
);

SELECT *
FROM Carbon_Emission.Energy;

INSERT INTO Carbon_Emission.Energy
VALUES (1, 2, 150, 1.98),
(2, 3, 250,4.55);

SELECT *
FROM Carbon_Emission.Energy;

CREATE TABLE Carbon_Emission.Food(
FID INT PRIMARY KEY,
UID INT NOT NULL,
choice VARCHAR(50) NOT NULL,
food_ce DEC (3,2)
);

SELECT * 
FROM Carbon_Emission.Food;

INSERT INTO Carbon_Emission.Food
VALUES(1, 1, 'Fruits', 4.22),
(2, 2, 'Vegetables', 9.86);

SELECT *
FROM Carbon_Emission.Food;

CREATE TABLE Carbon_Emission.ce(
CID INT PRIMARY KEY,
UID INT NOT NULL
);

SELECT *
FROM Carbon_Emission.ce;

INSERT INTO Carbon_Emission.ce
VALUES(11, 1),
(12, 2);

SELECT *
FROM Carbon_Emission.ce;

CREATE TABLE Carbon_Emission.User_Trans (
SELECT u.UID AS 'User_ID' , u.Name, u.Email, u.Password, t.UID as 'Transport_Users_Id', t.TID, t.Model, t.Method, t.Trans
FROM Carbon_Emission.Users u
LEFT JOIN Carbon_Emission.Transportation t
on u.UID = t.UID
);